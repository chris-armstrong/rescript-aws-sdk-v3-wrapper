# TODO

* ~~Cycle detection and type rec code generation for same~~ (a naive cycle detection has been added to unlock important cases but there is still some cycle detections not working)
* ~~Union types~~
* ~~Improve field name generation with multiple capital letters~~
* Consistent polymorphic variant generation (convert kebab-case, snake-case, space case etc. to consistent title case identifiers)
* ~~Reserved word filtering and processing for field and type names and variant types~~
* Replace exceptions with Errors
* Add error types to other modules
* Clean up traits handling
  - split from generate.res
  - organise by namespace (smithy.api / aws.api / aws.protocols)
* Implement exception re-throwing of AWS exceptions or strip out exception generation and create generic handler for AWS exception types
* Add @obj or @deriving("abstract") functions for creating request types with lots of optional fields
* Combined request create / send helper in each module
* ~~Run code through refmt~~
* Generate types and operations with documentation (from Documentation traits)
* Hand-written wrappers around AWS-helpers like DynamoDB's DocumentClient, etc.
