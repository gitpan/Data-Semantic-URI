package Data::Semantic::URI::TestData::http;

use strict;
use warnings;


our $VERSION = '0.01';


no warnings 'qw';    # Possible attempt to put comments in qw() list 

use constant TESTDATA => (
    {
        args => {},
        valid => [ qw(
            http://localhost/
            http://use.perl.org/~hanekomu/journal?entry=12345
        ) ],
        invalid  => [ qw(
            news://localhost/
            http://?123
            https://localhost/
            https://use.perl.org/~hanekomu/journal.txt#foobar
            http://use.perl.org/~hanekomu/journal.txt#foobar
            http://use.perl.org%2F~hanekomu/journal?entry=12345
        ) ],
    },
    {
        args => { scheme => 'https?' },
        valid => [ qw(
            http://localhost/
            http://use.perl.org/~hanekomu/journal?entry=12345
            https://localhost/
            https://use.perl.org/~hanekomu/journal?entry=12345
        ) ],
        invalid  => [ qw(
            news://localhost/
            http://?123
            http://use.perl.org/~hanekomu/journal.txt#foobar
            https://use.perl.org/~hanekomu/journal.txt#foobar
            http://use.perl.org%2F~hanekomu/journal?entry=12345
        ) ],
    },
    {
        args => { scheme => 'https' },
        valid => [ qw(
            https://localhost/
            https://use.perl.org/~hanekomu/journal?entry=12345
        ) ],
        invalid  => [ qw(
            http://localhost/
            http://use.perl.org/~hanekomu/journal?entry=12345
            http://use.perl.org/~hanekomu/journal.txt#foobar
            https://use.perl.org/~hanekomu/journal.txt#foobar
            http://use.perl.org%2F~hanekomu/journal?entry=12345
            http://?123
            news://localhost/
        ) ],
    },
);


1;


__END__


=head1 NAME

Data::Semantic::URI::TestData::http - Testdata classes

=head1 SYNOPSIS

None.

=head1 DESCRIPTION

Defines test data for L<Data::Semantic::URI::http_TEST>, 
but it is also used in the corresponding value and domain classes,
i.e., L<Class::Value::URI::http_TEST> and
L<Data::Domain::URI::http_TEST>.

=head1 TAGS

If you talk about this module in blogs, on del.icio.us or anywhere else,
please use the C<datasemanticuri> tag.

=head1 VERSION 
                   
This document describes version 0.01 of L<Data::Semantic::URI::TestData::http>.

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


