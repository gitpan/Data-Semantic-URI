package Data::Semantic::URI::TestData::fax;

use strict;
use warnings;
use Test::More;


our $VERSION = '0.01';


use constant TESTDATA => (
    {
        args => {},
        valid => [ qw(
            fax:+1-212-555-1234;tsp=terrifictelecom.com
            fax:+1-212-555-1234;tsp=terrifictelecom.com;phone-context=X-COMPANY-NET
            fax:+1-212-555-1234;tsub=0123456789-.();tsp=terrifictelecom.com;phone-context=X-COMPANY-NET
            fax:+123-456-789;isub=123(456)
            fax:+12345
            fax:+1234567890;phone-context=+1234;vnd.company.option=%22foo%22
            fax:+1234567890;phone-context=+1234;vnd.company.option=foo
            fax:+123456;postd=***
            fax:+12345;tsub=0123456789-.()
            fax:+1234;option=%22!%22
            fax:+1234;option=%22%5C!%22
            fax:+1234;option=%22%5C%22%22
            fax:+1234;option=%22bar%22
            fax:+358-555-1234567
            fax:+358-555-1234567;postd=pp22
            fax:+358-555-123456;tsub=0123456789-.()7
            fax:+456-7890;phone-context=213;phone-context=213
            fax:0w003585551234567;phone-context=+3585551234
            fax:456-7890;phone-context=213
            fax:456-7890;phone-context=213;phone-context=213
            fax:456-7890;phone-context=X-COMPANY-NET
            fax:456-7890;tsub=0123456789-.();phone-context=213
            fax:456-7890;tsub=0123456789-.();phone-context=X-COMPANY-NET
        ) ],
        invalid  => [ qw(
            fax:+1-800-RUN-PERL
            fax:+1234;option=%22%22%22
            fax:+1234;option=%22%5C%22
            fax:456-7890
            fax:456-7890;phone-context=213;tsub=0123456789-.()
            fax:456-7890;tsub=213;
            fax:456-7890;tsub=213;tsub=456
        ) ],
    },
    {
        args => { nofuture => 1 },
        valid => [ qw(
            fax:+1-212-555-1234;tsp=terrifictelecom.com
            fax:+1-212-555-1234;tsp=terrifictelecom.com;phone-context=X-COMPANY-NET
            fax:+1-212-555-1234;tsub=0123456789-.();tsp=terrifictelecom.com;phone-context=X-COMPANY-NET
            fax:+123-456-789;isub=123(456)
            fax:+12345
            fax:+123456;postd=***
            fax:+358-555-1234567
            fax:+358-555-1234567;postd=pp22
            fax:+456-7890;phone-context=213;phone-context=213
            fax:0w003585551234567;phone-context=+3585551234
            fax:456-7890;phone-context=213
            fax:456-7890;phone-context=213;phone-context=213
            fax:456-7890;phone-context=X-COMPANY-NET
            fax:456-7890;tsub=0123456789-.();phone-context=213
            fax:456-7890;tsub=0123456789-.();phone-context=X-COMPANY-NET
        ) ],
        invalid  => [ qw(
            fax:+1-800-RUN-PERL
            fax:+123-456-789;isub=123(456);isub=123(456)
            fax:+123-456-789;isub=A23(456)
            fax:+1234567890;phone-context=+1234;vnd.company.option=%22foo%22
            fax:+1234567890;phone-context=+1234;vnd.company.option=foo
            fax:+12345;tsub=foo
            fax:+1234;option=%22!%22
            fax:+1234;option=%22%22%22
            fax:+1234;option=%22%5C!%22
            fax:+1234;option=%22%5C%22%22
            fax:+1234;option=%22%5C%22
            fax:+1234;option=%22bar%22
            fax:+358-555-1234567;phone-context=+1234;postd=pp22
            fax:1234567890;phone-context=+1234;vnd.company.option=%22foo%22
            fax:1234567890;phone-context=+1234;vnd.company.option=foo
            fax:1234;option=%22!%22
            fax:1234;option=%22%5C!%22
            fax:1234;option=%22%5C%22%22
            fax:1234;option=%22bar%22
            fax:456-7890
            fax:456-7890;tsub=213;
            fax:456-7890;tsub=213;tsub=456
        ) ],
    },
);


1;


__END__


=head1 NAME

Data::Semantic::URI::TestData::fax - Testdata classes

=head1 SYNOPSIS

None.

=head1 DESCRIPTION

Defines test data for L<Data::Semantic::URI::fax_TEST>, 
but it is also used in the corresponding value and domain classes,
i.e., L<Class::Value::URI::fax_TEST> and
L<Data::Domain::URI::fax_TEST>.

=head1 TAGS

If you talk about this module in blogs, on del.icio.us or anywhere else,
please use the C<datasemanticuri> tag.

=head1 VERSION 
                   
This document describes version 0.01 of L<Data::Semantic::URI::TestData::fax>.

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


