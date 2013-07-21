# vim keybinding for running this extension during testing
# yank the lines and execute them with :@" separately
# :nmap <F5> :w<CR>:!texapp -exts=%:p<CR>
# :imap <F5> <Esc>:w<CR>:!texapp -exts=%:p<CR>
use Data::Dumper;

$handle = sub {
	my $ref = shift;

	$color = ${'CC'.scalar(&$posttype($ref,&descape($ref->{'user'}->{'username'}),$ref->{'text'}))};
	$color = $OFF.$color;

	my ($time, $ts) = &$wraptime($ref->{'created_at'}) if &getvariable('timestamp');
	my $menuselect = '<'.$ref->{'_texapp_menu_select'}.'> ';
	my $timestamp = defined($ts)?'['.$ts.'] ':'';
	my $names;
	if (defined $ref->{'user'}->{'name'}) {
		$names = 
			"${EM}".
			&descape($ref->{'user'}->{'name'}).
			"$OFF".
			' ('.
			"${EM}".
			&descape($ref->{'user'}->{'username'}).
			"$OFF".
			') [' . &descape($ref->{'user'}->{'type'}) . '] '
		;
	} else {
		$names = "${EM}".&descape($ref->{'user'}->{'username'})."$OFF ";
	}
	my $text = "${color}".&descape($ref->{'text'})."$OFF";
	my $bar = &descape("┃ ");
	$text =~ s/\\n/\n$bar/g;

	&sto(join('', 
		&descape("┏━━ "),
		$names,
		"${color}".$menuselect."$OFF",
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

	$color = ${'CCdm'};
	$color = $OFF.$color;

	my ($time, $ts) = &$wraptime($ref->{'created_at'}) if &getvariable('timestamp');
	my $menuselect = '<DM d'.$ref->{'_texapp_menu_select'}.'> ';
	my $timestamp = defined($ts)?'['.$ts.'] ':'';
	my $names;
	if (defined $ref->{'user'}->{'name'}) {
		$names = 
			"${EM}".
			&descape($ref->{'user'}->{'name'}).
			"$OFF".
			' ('.
			"${EM}".
			&descape($ref->{'user'}->{'username'}).
			"$OFF".
			') [' . &descape($ref->{'user'}->{'type'}) . '] '
		;
	} else {
		$names = "${EM}".&descape($ref->{'user'}->{'username'})."$OFF ";
	}
	my $text = "${color}".&descape($ref->{'text'})."$OFF";
	my $bar = &descape("┃ ");
	$text =~ s/\\n/\n$bar/g;

	&sto(join('',
		&descape("┏━━ "),
		$names,
		"${color}".$menuselect."$OFF",
		$timestamp,
		"\n".&descape("┃ "),
		#(' ' x length $menuselect),
		$text,
		#"\n".&descape("┗━━")."\n",
		"\n",
	));
	return 1;
};
