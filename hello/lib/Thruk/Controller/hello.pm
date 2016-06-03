package Thruk::Controller::hello;

use strict;
use warnings;

=head1 NAME

Thruk::Controller::hello - Hello World!

=head1 DESCRIPTION

Hello World!.

=head1 METHODS

=cut


=head2 index

=cut

sub index {
        my ( $c ) = @_;
        $c->stash->{title}           = 'Hello World!';
        $c->stash->{template} = 'hello.tt';
        $c->stash->{hello_var} = 'Hello World!'; # This is our magic variable
}

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
