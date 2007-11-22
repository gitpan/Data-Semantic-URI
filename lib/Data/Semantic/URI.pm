package Data::Semantic::URI;

use strict;
use warnings;


our $VERSION = '0.02';


use base qw(Data::Semantic::RegexpAdapter);


1;


__END__



=head1 NAME

Data::Semantic::URI - Semantic data classes for URIs

=head1 SYNOPSIS

    Data::Semantic::URI->new;

=head1 DESCRIPTION

This is a base class for semantic data classes for URIs. Classes for the
following URI types are available:

=over 4

=item fax

See L<Data::Semantic::URI::fax>.

=item file

See L<Data::Semantic::URI::file>.

=item ftp

See L<Data::Semantic::URI::ftp>.

=item http

See L<Data::Semantic::URI::http>.

=back

Data::Semantic::URI inherits from L<Data::Semantic::RegexpAdapter>.

The superclass L<Data::Semantic::RegexpAdapter> defines these methods and
functions:

    KEEP_KEYS(), LOAD(), REGEXP_KEYS(), clear_keep(), clear_kept(),
    clear_re(), delete_kept(), exists_kept(), flags(), init(),
    is_valid_normalized_value(), keep(), keep_clear(), keep_set(), kept(),
    kept_clear(), kept_delete(), kept_exists(), kept_keys(), kept_values(),
    keys_kept(), re(), re_clear(), set_keep(), values_kept()

The superclass L<Data::Semantic> defines these methods and functions:

    new(), is_valid(), normalize()

The superclass L<Class::Accessor::Complex> defines these methods and
functions:

    carp(), cluck(), croak(), flatten(), mk_abstract_accessors(),
    mk_array_accessors(), mk_boolean_accessors(),
    mk_class_array_accessors(), mk_class_hash_accessors(),
    mk_class_scalar_accessors(), mk_concat_accessors(),
    mk_forward_accessors(), mk_hash_accessors(), mk_integer_accessors(),
    mk_new(), mk_object_accessors(), mk_scalar_accessors(),
    mk_set_accessors(), mk_singleton()

The superclass L<Class::Accessor> defines these methods and functions:

    _carp(), _croak(), _mk_accessors(), accessor_name_for(),
    best_practice_accessor_name_for(), best_practice_mutator_name_for(),
    follow_best_practice(), get(), make_accessor(), make_ro_accessor(),
    make_wo_accessor(), mk_accessors(), mk_ro_accessors(),
    mk_wo_accessors(), mutator_name_for(), set()

The superclass L<Class::Accessor::Installer> defines these methods and
functions:

    install_accessor(), subname()

The superclass L<Data::Inherited> defines these methods and functions:

    every_hash(), every_list(), flush_every_cache_by_key()

=head1 METHODS

=over 4



=back

=head1 TODO

Add the other URI classes supported by L<Regexp::Common::URI>.

=head1 TAGS

If you talk about this module in blogs, on del.icio.us or anywhere else,
please use the C<datasemanticuri> tag.

=head1 VERSION 
                   
This document describes version 0.02 of L<Data::Semantic::URI>.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests to
C<<bug-data-semantic-uri@rt.cpan.org>>, or through the web interface at
L<http://rt.cpan.org>.

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 AVAILABILITY

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit <http://www.perl.com/CPAN/> to find a CPAN
site near you. Or see <http://www.perl.com/CPAN/authors/id/M/MA/MARCEL/>.

=head1 AUTHOR

Marcel GrE<uuml>nauer, C<< <marcel@cpan.org> >>

=head1 COPYRIGHT AND LICENSE

Copyright 2007 by Marcel GrE<uuml>nauer

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.


=cut

