# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Post.create([
    {
        id: 4,
        title: 'Star Wars',
        content: 'this is the content',
        media_type: 'audio'
    },
    {
        id: 5,
        title: 'Lord of the Rings',
        content: 'okay elf movie',
        media_type: 'text'
    }
])

#   Character.create(name: 'Luke', movie: movies.first)
