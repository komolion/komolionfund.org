---
layout: post
author: Mason Everett
---
The goal of this post is to provide an overview of web development in five minutes. I wrote it because learning web development can be overwhelming. The technologies, frameworks, and patterns you’ll find are numerous and ever-changing. But you have to start somewhere, so let’s jump in.

#### Overview

When you navigate to a website, you are asking another computer somewhere in the world to send you some files. The other computer will probably send you an HTML file, some CSS files that the browser will use to style the webpage, and some JavaScript files so you can meaningfully interact with the page. It may also include some image or video files.

At a basic level, that is really all that is happening when you browse the web. Let’s take a quick look at each of those pieces. If you’re reading this on a device that won’t allow you to follow along with the examples, don’t worry. They aren’t critical for understanding the material.

#### HTML

HTML stands for Hypertext Markup Language. *It is not code.* It is data. It’s a little like how a Microsoft Excel spreadsheet is not code. It is just data in a specific format that Excel knows how to read and display to you. HTML is just data in a specific format that your web browser knows how to read and display to you. Here’s a simple example.

```
<html>
  <head>
    <title>My Title</title>
  </head>
  <body>
    <h1>Hello World!</h1>
    <span>You made a web page.</span>
  </body>
</html>
```

Save this example as a HTML file and open it in a browser yourself to see how it looks. You should see “My Title” in the tab at the top, “Hello World!” in big black letters, and “You made a web page.” in smaller letters underneath. Like I said, it is a simple example, but it works the same way every website does.

##### CSS

CSS stands for Cascading Style Sheets. Like HTML, it is not code. It is data, and it pairs with HTML. HTML tells the browser *what* to show on the page, and CSS tells it *how* to show it. CSS modifies the style of your HTML, allowing you to specify things like color, font, height, width, and even animation. Here’s an example to pair with our HTML above.

```
h1 {
  color: red;
}

span {
  border: thin solid blue;
}
```

Save this as a CSS file in the same folder as your HTML file. Then in the HTML file, modify the `head` section like so, replacing `{file_name}` with the name of your file, of course.

```
  <head>
    <title>My Title</title>
    <link rel="stylesheet" href="./{file_name}.css">
  </head>
```

Once you save those files and reload your webpage, you should notice that “Hello World!” is now red, and the text below it has a thin, blue border.

At this point, consider yourself a web designer. You can write HTML and CSS to create beautiful web pages. But you’re still not a web developer, because you haven’t written any code. Let’s do that next with JavaScript.

#### JavaScript

JavaScript (or JS for short) is a programming language that web browsers can run. It brings with it all the power of programming, so you turn your web pages into interactive applications.

One important note here is that this code is still just another file that gets shipped from one computer to another. So when someone visits your website, they get your JS files to run on their own computer. That may not seem like much now, but it makes a big difference when it comes to topics like security.

To demonstrate some JS, let’s setup a button that, when clicked, displays a browser alert. We’ll use a new JS file and include another tag in our HTML to reference it. This time we’ll modify the `body` section of our HTML to add a button and include our JS.

```
  <body>
    <h1>Hello World!</h1>
    <span>You made a web page.</span>
    <button onclick="myFunction()">Click Me</button>
    <script src="./{file_name}.js"></script>
  </body>
```

In your new JS file in the same folder, add the following code.

```
function myFunction() {
  alert('You clicked the button!');
}
```

Once you save all those files and reload your webpage, you’ll see a button that, when clicked, alerts you. Congratulations, you’re a web developer.

#### Wrap Up

You’ve done it. Go prepare your résumé and cover letters for Google, Facebook, and Amazon so they can begin fighting over your web development expertise.

But in all seriousness, you should be proud. You now can talk about web development at dinner parties without sounding completely out of the loop, and that is where everyone begins.

I hope this document was helpful for you. If you have questions or feedback, you can find me on [LinkedIn](https://www.linkedin.com/in/masonheverett).

#### Links

Never stop learning. Here are my favorite resources for learning HTML, CSS, and Javascript.

- [W3Schools Online Web Tutorials](https://www.w3schools.com/)
- [MDN Web Docs](https://developer.mozilla.org/en-US/)
