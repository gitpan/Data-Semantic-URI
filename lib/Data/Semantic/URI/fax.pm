package Data::Semantic::URI::fax;

use strict;
use warnings;


our $VERSION = '0.02';


use base qw(Data::Semantic::URI);


__PACKAGE__->mk_boolean_accessors(qw(nofuture));


use constant REGEXP_KEYS => qw(URI fax);
use constant KEEP_KEYS   => qw(URI scheme phone_number);


sub flags {
    my $self = shift;
    my @flags = $self->SUPER::flags(@_);
    push @flags => 'nofuture' if $self->nofuture;
    @flags;
}


1;


__END__



=head1 NAME

Data::Semantic::URI::fax - semantic data class for fax URIs

=head1 SYNOPSIS

    my $obj = Data::Semantic::URI::fax->new;
    if ($obj->is_valid($value)) { ... }

=head1 DESCRIPTION

This class can tell whether a value is a fax URI, as defined by RFC 2006. The
C<valid()> method will respect the C<nofuture> boolean attribute and the
inherited C<keep> boolean attribute.

If C<nofuture> is set, future extensions are not allowed.

If C<keep> is set, C<kept()> will return a hash with the following keys/value
pairs:

=over 4

=item URI

The complete URI.

=item scheme

The scheme.

=item phone_number

The phone number, including any possible add-ons like ISDN subaddress, a
post dial part, area specifier, service provider, etc.

=back

Data::Semantic::URI::fax inherits from L<Data::Semantic::URI>.

The superclass L<Data::Semantic::RegexpAdapter> defines these methods and
functions:

    LOAD(), clear_keep(), clear_kept(), clear_re(), delete_kept(),
    exists_kept(), init(), is_valid_normalized_value(), keep(),
    keep_clear(), keep_set(), kept(), kept_clear(), kept_delete(),
    kept_exists(), kept_keys(), kept_values(), keys_kept(), re(),
    re_clear(), set_keep(), values_kept()

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

=item clear_nofuture

    $obj->clear_nofuture;

Clears the boolean value by setting it to 0.

=item nofuture

    $obj->nofuture($value);
    my $value = $obj->nofuture;

If called without an argument, returns the boolean value (0 or 1). If called
with an argument, it normalizes it to the boolean value. That is, the values
0, undef and the empty string become 0; everything else becomes 1.

=item nofuture_clear

    $obj->nofuture_clear;

Clears the boolean value by setting it to 0.

=item nofuture_set

    $obj->nofuture_set;

Sets the boolean value to 1.

=item set_nofuture

    $obj->set_nofuture;

Sets the boolean value to 1.

=back

=head1 SEE ALSO

L<Regexp::Common::URI::fax>

=head1 TAGS

If you talk about this module in blogs, on del.icio.us or anywhere else,
please use the C<datasemanticuri> tag.

=head1 VERSION 
                   
This document describes version 0.02 of L<Data::Semantic::URI::fax>.

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

