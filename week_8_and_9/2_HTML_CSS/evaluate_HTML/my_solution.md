## Evaluate a Website! 
 
__1) How does this website follow HTML Best Practices? Are there any places where 
it does not?  Provide examples of the "bad" code.__

The HTML is good for the most part, so here's a list of the "bad" things that I found based on the 30 HTML Best Practices site.

Bad things:

It doesn't declare the DocType, which I assume is because the HTML was minified.

It uses inline styles. For example, ```html <table border=0 cellpadding=0 cellspacing=0 width="85%" bgcolor=#f6f6ef> ```

The navigation at the top isn't wrapped in an unordered list.

Doesn't have a separate CSS file for Internet Explorer compatability.

Images are missing an Alt attribute.

Doesn't use a CSS reset.

__2) What do you think of the HTML? Did the writers use IDs and Classes properly? 
Did you like the way they used HTML tags?  Please use examples with your arguments.__

From what I understand, ID's are meant to be used for only one element on one page, and classes are used multiple times. In this page, there are only classes. At the same time, there are classes that are only used once, like the pagetop class.

I like how the posts are all in a table. It makes sense in this case because of the way the page displays the information.
 
__3) How did the authors handle formatting? Did they include it in the HTML or 
separate it into a CSS file? Or did they do both?  Again, include examples.__

The authors used both inline styling and a separate CSS file. I included an example of the inline style in the first question above. I just find it interesting that the author redundantly used classes for one single element _and_ inline styles because they seem to do the same thing, so why not be consistent?
 
__4) Did the authors include anything you didn't immediately understand? 
If so, what?__

There were some tags that I never used before like the ```html<table> <tr> <td>``` table tags and ```html<span>```, so seeing them in use helped me understand what they do.
 
__5) How did the authors organize the CSS file? Was it DRY?__
 
There's a lot of repetitive styles in the CSS, mainly for the fonts and colors. The repeated properties should be grouped, named and then have the selectors applied
 
__6) Did the authors incorporate any responsive design into the site?__

The site scales depending on the browser size so there is responsive design incorporated. The CSS also factors in different browsers and devices.

__7) What are your overall thoughts on the HTML/CSS from this website based on 
what you've read?__

In my opinion, I think this site looks and operates fine for the every day user. After reading through the best practice resources we were given, I do see the "bad" things that aren't following best practice, but I also think a lot of those things are subjective. I think everyone just has a different way of coding/writing HTML/CSS so there will be times when people disagree on how it should look.
