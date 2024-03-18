**IPv4 to DWORD Converter**

This Perl script converts IPv4 addresses to their DWORD (Double Word) representation. It takes an IPv4 address as input and converts it into a 32-bit unsigned integer, commonly known as a DWORD. This script can be useful in networking applications or systems programming where IPv4 addresses need to be represented as numerical values.

**Usage**

To use the script, simply run it from the command line and provide an IPv4 address as an argument. 

For example:
**perl ipv4_to_dword.pl yahoo.com**

For quiet mode:
**perl ipv4_to_dword.pl -q yahoo.com**

This will output the DWORD representation of the given hostname.

**Features**
Converts IPv4 addresses to DWORD representation.
Simple and easy-to-understand Perl implementation.
Can be integrated into larger scripts or used as a standalone utility.

**Requirements**
Perl interpreter
Standard Perl modules: strict, warnings, Socket
