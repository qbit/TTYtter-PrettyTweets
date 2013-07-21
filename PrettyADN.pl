# vim keybinding for running this extension during testing
# yank the lines and execute them with :@" separately
# :nmap <F5> :w<CR>:!ttytter -timestamp="\%H:\%M" -exts=%:p<CR>
# :imap <F5> <Esc>:w<CR>:!ttytter -timestamp="\%H:\%M" -exts=%:p<CR>
use Data::Dumper;

$handle = sub {
	my $ref = shift;

	$colour = ${'CC'.scalar(&$posttype($ref,&descape($ref->{'user'}->{'username'}),$ref->{'text'}))};
	$colour = $OFF.$colour;

	my ($time, $ts) = &$wraptime($ref->{'created_at'}) if &getvariable('timestamp');
	my $menuselect = '<'.$ref->{'_texapp_menu_select'}.'> ';
	my $timestamp = defined($ts)?'['.$ts.'] ':'';
	my $names;
	if (defined $ref->{'user'}->{'name'}) {
		$names = 
			"${EM}${CYAN}".
			&descape($ref->{'user'}->{'name'}).
			"$OFF".
			' ('.
			"${EM}${CYAN}".
			&descape($ref->{'user'}->{'username'}).
			"$OFF".
			') [' . &descape($ref->{'user'}->{'type'}) . '] '
		;
	} else {
		$names = "${EM}".&descape($ref->{'user'}->{'username'})."$OFF ";
	}
	my $text = "${colour}".&descape($ref->{'text'})."$OFF";
	my $bar = &descape("┃ ");
	$text =~ s/\\n/\n$bar/g;

	&sto(join('', 
		&descape("┏━━ "),
		$names,
		"${colour}".$menuselect."$OFF",
		$timestamp,
		"\n".&descape("┃ "),
		#(' ' x length $menuselect),
		$text,
		#"\n".&descape("┗━━")."\n",
		"\n",
	));
	return 1;
};

$pmhandle = sub {
	my $ref = shift;

	$colour = ${'CCpm'};
	$colour = $OFF.$colour;

	my ($time, $ts) = &$wraptime($ref->{'created_at'}) if &getvariable('timestamp');
	my $menuselect = '<DM d'.$ref->{'_texapp_menu_select'}.'> ';
	my $timestamp = defined($ts)?'['.$ts.'] ':'';
	my $names;
	if (defined $ref->{'user'}->{'name'}) {
		$names = 
			"${EM}${RED}".
			&descape($ref->{'user'}->{'name'}).
			"$OFF".
			' ('.
			"${EM}${RED}".
			&descape($ref->{'user'}->{'username'}).
			"$OFF".
			') [' . &descape($ref->{'user'}->{'type'}) . '] '
		;
	} else {
		$names = "${EM}".&descape($ref->{'user'}->{'username'})."$OFF ";
	}
	my $text = "${colour}".&descape($ref->{'text'})."$OFF";
	my $bar = &descape("┃ ");
	$text =~ s/\\n/\n$bar/g;

	&sto(join('',
		&descape("┏━━ "),
		$names,
		"${colour}".$menuselect."$OFF",
		$timestamp,
		"\n".&descape("┃ "),
		#(' ' x length $menuselect),
		$text,
		#"\n".&descape("┗━━")."\n",
		"\n",
	));
	return 1;
};
