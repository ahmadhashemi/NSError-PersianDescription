# NSError+PersianDescription

Persian description for errors of NSError class.

## Usage

Add all files into your project, import NSError+PersianDescription.h, and wherever you get an NSError object, just write:
~~~~
error.persianDescription;
~~~~
to get error description in persian.

## Contributing

You have 2 options:

**1. Help to complete currently working domains:**
To do so, simply find plist file for desired domain in Strings folder, and add a new error code or just edit previouly added ones.

**2. Add new domains:**
To do so, create new plist file in Strings directory, named as [DOMAINNAME]+PersianDescription.plist. Then start adding error codes as keys and persian descriptions as values.

**You don't need to touch codes at all if you follow above instructions.**
