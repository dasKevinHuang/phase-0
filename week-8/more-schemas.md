###8.5 More Schemas (medium)

####Reflection written by Kevin Huang

#One-to-One Relationships

![one-to-one](../imgs/one-to-one.png)

#One-to-Many Relationships

![schema](../database-intro/schema.png)

#Many-to-Many Relationships (2 examples)

![many-to-many](../imgs/many-to-many.png)

![many-to-many2](../imgs/many-to-many2.png)

####What is a one-to-one database?

A one-to-one-database is a relational database with tables that exhibit a relationship wherein which each object is directly connected to the other object, and vice versa. You could also think of objects that have a one-to-one relationship as being paired together.

####When would you use a one-to-one database? (Think generally, not in terms of the example you created).

You would use a one-to-one database when data should be paired together.

####What is a many-to-many database?

A many-to-many database is a relational database with tables of objects that have relationships with many types of the other object, and vice versa. 

####When would you use a many-to-many database? (Think generally, not in terms of the example you created).

You would use a many-to-many database, when there are two types of objects that are fairly related to each other, however there are many different objects - such as authors and books. An author may have written many books, and a book may have many authors.

####What is confusing about database schemas? What makes sense?

It's not too confusing once we design our own schemas in the schema designer. Seeing it visually helps to solidify the concept.