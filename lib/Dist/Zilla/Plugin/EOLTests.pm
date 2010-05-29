package Dist::Zilla::Plugin::EOLTests;
# ABSTRACT: Release tests making sure correct line endings are used

use Moose;
use namespace::autoclean;

extends 'Dist::Zilla::Plugin::InlineFiles';

=head1 DESCRIPTION

This is an extension of L<Dist::Zilla::Plugin::InlineFiles>, providing
the following files:

=for :list
* xt/release/eol.t
a standard Test::EOL test

=cut

__PACKAGE__->meta->make_immutable;

1;

__DATA__
___[ xt/release/eol.t ]___
use strict;
use warnings;
use Test::More;

eval 'use Test::EOL';
plan skip_all => 'Test::EOL required' if $@;

all_perl_files_ok();
