package Thruk::Controller::hello;

use strict;
use warnings;

=head1 NAME

Thruk::Controller::hello - Hello World!

=head1 DESCRIPTION

Hello World!.

=head1 METHODS


=head2 index

This is the entry point for thruk to start the plugin

=cut

sub index {
        my ( $c ) = @_;

	return unless Thruk::Action::AddDefaults::add_defaults($c, Thruk::ADD_CACHED_DEFAULTS);
	if( !$c->check_user_roles("authorized_for_configuration_information") || !$c->check_user_roles("authorized_for_system_commands")) {
		return $c->detach('/error/index/8');
	}

        $c->stash->{title}           = 'Hello World!';
        $c->stash->{'subtitle'}              = 'Hello World!';
        $c->stash->{'infoBoxTitle'}          = 'Hello World!';
        $c->stash->{'no_auto_reload'}      = 1;
        $c->stash->{template} = 'hello.tt';
        $c->stash->{hello_var} = 'Hello World!'; # This is our magic variable
}

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
