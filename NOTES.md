#Step 1: Integrate Basic Theme to Asset Pipeline

#Step 2: I want people to be able to create lists. Then they should be able to add items to those lists. They should be able to navigate many lists and see each list items. Allow people to crud lists

#Step 3: Add items to a list.

  #Does it impact my DB? need an items table. Items are associated with a list
    a list has many items
    an item belongs to a list

    items
    id   description  list_id
  Create action for an item in a list
  #Does it impacy my URLs?

#Step 4: Adding Validations

Validate that lists have name
Validate that items have a description

#Step 5: I want to add state (complete, incomplete) to Items in a List
  -Marking items as complete or incomplete
  <input class="toggle" type="checkbox">  - add this to the view

  need JS function to submit the form when you click the checkbox

  $(function(){
    $("input.toggle").on("change", function(){
      $(this).parents("form").trigger("submit")
      })
    });

#Step 6: Refactor 1: Start using partials in lists/show because it's a bit messy

#Step 7: Deleting items from a list
