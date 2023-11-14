Description: The Demo Tests for WEB App Plugin


Scenario: 1. Verify that allows register a User

Given I am on page with URL `https://demowebshop.tricentis.com/`
When I click on element located by `By.xpath(//a[@class="ico-register"])`
Then the page with the URL 'https://demowebshop.tricentis.com/register' is loaded

When I click on element located by `By.xpath(//input[@id="gender-female"])`

When I click on element located by `By.xpath(//input[@id="FirstName"])`
When I execute sequence of actions:
|type      |argument    |
|ENTER_TEXT|Iryna       |

When I click on element located by `By.xpath(//input[@id="LastName"])`
When I execute sequence of actions:
|type      |argument    |
|ENTER_TEXT|Prudka      |

When I click on element located by `By.xpath(//input[@id="Email"])`
When I execute sequence of actions:
|type      |argument            |
|ENTER_TEXT|iraprudka@gmail.com |

When I click on element located by `By.xpath(//input[@id="Password"])`
When I execute sequence of actions:
|type      |argument  |
|ENTER_TEXT|123456    |

When I click on element located by `By.xpath(//input[@id="ConfirmPassword"])`
When I execute sequence of actions:
|type      |argument  |
|ENTER_TEXT|123456    |

When I click on element located by `By.xpath(//input[@id="register-button"])`
!-- Then the page with the URL 'https://demowebshop.tricentis.com/registerresult/1' is loaded
!-- Then number of elements found by `By.xpath(//div[@class="result" and contains(text(),"Your registration completed")])` is = `1`



Scenario: 2. Verify that allows login a User

Given I am on page with URL `https://demowebshop.tricentis.com/`
When I click on element located by `By.xpath(//a[@class="ico-login"])`
Then the page with the URL 'https://demowebshop.tricentis.com/login' is loaded

When I click on element located by `By.xpath(//input[@id="Email"])`
When I execute sequence of actions:
|type      |argument            |
|ENTER_TEXT|iraprudka@gmail.com |

When I click on element located by `By.xpath(//input[@id="Password"])`
When I execute sequence of actions:
|type      |argument  |
|ENTER_TEXT|123456    |

When I click on element located by `By.xpath(//input[contains(@class,"login-button")])`
Then the page with the URL 'https://demowebshop.tricentis.com/' is loaded
Then number of elements found by `By.xpath(//a[@class="account" and contains(text(),"iraprudka@gmail.com")])` is = `1`




Scenario: 3. Verify that ‘Computers’ group has 3 sub-groups with correct names

Given I am on page with URL `https://demowebshop.tricentis.com/`
When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//a[@href="/computers"])`
Then number of elements found by `By.xpath(//ul[@class="top-menu"]//a[@href="/computers"])` is = `1`
Then number of elements found by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/desktops"])` is = `1`
Then number of elements found by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/notebooks"])` is = `1`
Then number of elements found by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/accessories"])` is = `1`

When I click on element located by `By.xpath(//ul[@class="top-menu"]//a[@href="/computers"])`
Then the page with the URL 'https://demowebshop.tricentis.com/computers' is loaded
Then number of elements found by `By.xpath(//div[@class="page-body"]//a[@href="/desktops" and contains(text(),"Desktops")])` is = `1`
Then number of elements found by `By.xpath(//div[@class="page-body"]//a[@href="/notebooks" and contains(text(),"Notebooks")])` is = `1`
Then number of elements found by `By.xpath(//div[@class="page-body"]//a[@href="/accessories" and contains(text(),"Accessories")])` is = `1`

When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//a[@href="/computers"])`
When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/desktops"])`
When I click on element located by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/desktops"])`
Then the page with the URL 'https://demowebshop.tricentis.com/desktops' is loaded

When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//a[@href="/computers"])`
When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/notebooks"])`
When I click on element located by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/notebooks"])`
Then the page with the URL 'https://demowebshop.tricentis.com/notebooks' is loaded

When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//a[@href="/computers"])`
When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/accessories"])`
When I click on element located by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/accessories"])`
Then the page with the URL 'https://demowebshop.tricentis.com/accessories' is loaded

When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//a[@href="/computers"])`
When I click on element located by `By.xpath(//ul[@class="top-menu"]//a[@href="/computers"])`
Then the page with the URL 'https://demowebshop.tricentis.com/computers' is loaded
When I click on element located by `By.xpath(//div[@class="page-body"]//a[@href="/desktops" and contains(text(),"Desktops")])`
Then the page with the URL 'https://demowebshop.tricentis.com/desktops' is loaded

When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//a[@href="/computers"])`
When I click on element located by `By.xpath(//ul[@class="top-menu"]//a[@href="/computers"])`
Then the page with the URL 'https://demowebshop.tricentis.com/computers' is loaded
When I click on element located by `By.xpath(//div[@class="page-body"]//a[@href="/notebooks" and contains(text(),"Notebooks")])`
Then the page with the URL 'https://demowebshop.tricentis.com/notebooks' is loaded

When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//a[@href="/computers"])`
When I click on element located by `By.xpath(//ul[@class="top-menu"]//a[@href="/computers"])`
Then the page with the URL 'https://demowebshop.tricentis.com/computers' is loaded
When I click on element located by `By.xpath(//div[@class="page-body"]//a[@href="/accessories" and contains(text(),"Accessories")])`
Then the page with the URL 'https://demowebshop.tricentis.com/accessories' is loaded



Scenario: 4. Verify that allows sorting items (different options)

Given I am on page with URL `https://demowebshop.tricentis.com/`


When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//a[@href="/computers"])`
When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/desktops"])`
When I click on element located by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/desktops"])`
Then the page with the URL 'https://demowebshop.tricentis.com/desktops' is loaded

When I select `Name: A to Z` in dropdown located `By.xpath(//select[@id="products-orderby"])`
Then the page with the URL 'https://demowebshop.tricentis.com/desktops?orderby=5' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"Name: A to Z")])` is = `1`

When I select `Name: Z to A` in dropdown located `By.xpath(//select[@id="products-orderby"])`
Then the page with the URL 'https://demowebshop.tricentis.com/desktops?orderby=6' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"Name: Z to A")])` is = `1`

When I select `Price: Low to High` in dropdown located `By.xpath(//select[@id="products-orderby"])`
Then the page with the URL 'https://demowebshop.tricentis.com/desktops?orderby=10' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"Price: Low to High")])` is = `1`

When I select `Price: High to Low` in dropdown located `By.xpath(//select[@id="products-orderby"])`
Then the page with the URL 'https://demowebshop.tricentis.com/desktops?orderby=11' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"Price: High to Low")])` is = `1`

When I select `Created on` in dropdown located `By.xpath(//select[@id="products-orderby"])`
Then the page with the URL 'https://demowebshop.tricentis.com/desktops?orderby=15' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"Created on")])` is = `1`

When I select `Position` in dropdown located `By.xpath(//select[@id="products-orderby"])`
Then the page with the URL 'https://demowebshop.tricentis.com/desktops?orderby=0' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"Position")])` is = `1`


When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//a[@href="/computers"])`
When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/notebooks"])`
When I click on element located by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/notebooks"])`
Then the page with the URL 'https://demowebshop.tricentis.com/notebooks' is loaded

When I select `Name: A to Z` in dropdown located `By.xpath(//select[@id="products-orderby"])`
Then the page with the URL 'https://demowebshop.tricentis.com/notebooks?orderby=5' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"Name: A to Z")])` is = `1`

When I select `Name: Z to A` in dropdown located `By.xpath(//select[@id="products-orderby"])`
Then the page with the URL 'https://demowebshop.tricentis.com/notebooks?orderby=6' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"Name: Z to A")])` is = `1`

When I select `Price: Low to High` in dropdown located `By.xpath(//select[@id="products-orderby"])`
Then the page with the URL 'https://demowebshop.tricentis.com/notebooks?orderby=10' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"Price: Low to High")])` is = `1`

When I select `Price: High to Low` in dropdown located `By.xpath(//select[@id="products-orderby"])`
Then the page with the URL 'https://demowebshop.tricentis.com/notebooks?orderby=11' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"Price: High to Low")])` is = `1`

When I select `Created on` in dropdown located `By.xpath(//select[@id="products-orderby"])`
Then the page with the URL 'https://demowebshop.tricentis.com/notebooks?orderby=15' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"Created on")])` is = `1`

When I select `Position` in dropdown located `By.xpath(//select[@id="products-orderby"])`
Then the page with the URL 'https://demowebshop.tricentis.com/notebooks?orderby=0' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"Position")])` is = `1`


When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//a[@href="/computers"])`
When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/accessories"])`
When I click on element located by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/accessories"])`
Then the page with the URL 'https://demowebshop.tricentis.com/accessories' is loaded

When I select `Name: A to Z` in dropdown located `By.xpath(//select[@id="products-orderby"])`
Then the page with the URL 'https://demowebshop.tricentis.com/accessories?orderby=5' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"Name: A to Z")])` is = `1`

When I select `Name: Z to A` in dropdown located `By.xpath(//select[@id="products-orderby"])`
Then the page with the URL 'https://demowebshop.tricentis.com/accessories?orderby=6' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"Name: Z to A")])` is = `1`

When I select `Price: Low to High` in dropdown located `By.xpath(//select[@id="products-orderby"])`
Then the page with the URL 'https://demowebshop.tricentis.com/accessories?orderby=10' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"Price: Low to High")])` is = `1`

When I select `Price: High to Low` in dropdown located `By.xpath(//select[@id="products-orderby"])`
Then the page with the URL 'https://demowebshop.tricentis.com/accessories?orderby=11' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"Price: High to Low")])` is = `1`

When I select `Created on` in dropdown located `By.xpath(//select[@id="products-orderby"])`
Then the page with the URL 'https://demowebshop.tricentis.com/accessories?orderby=15' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"Created on")])` is = `1`

When I select `Position` in dropdown located `By.xpath(//select[@id="products-orderby"])`
Then the page with the URL 'https://demowebshop.tricentis.com/accessories?orderby=0' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"Position")])` is = `1`



Scenario: 5. Verify that allows changing number of items on page

Given I am on page with URL `https://demowebshop.tricentis.com/`

When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//a[@href="/computers"])`
When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/desktops"])`
When I click on element located by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/desktops"])`
Then the page with the URL 'https://demowebshop.tricentis.com/desktops' is loaded

When I select `12` in dropdown located `By.xpath(//select[@id="products-pagesize"])`
Then the page with the URL 'https://demowebshop.tricentis.com/desktops?pagesize=12' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"12")])` is = `1`

When I select `8` in dropdown located `By.xpath(//select[@id="products-pagesize"])`
Then the page with the URL 'https://demowebshop.tricentis.com/desktops?pagesize=8' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"8")])` is = `1`

When I select `4` in dropdown located `By.xpath(//select[@id="products-pagesize"])`
Then the page with the URL 'https://demowebshop.tricentis.com/desktops?pagesize=4' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"4")])` is = `1`


When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//a[@href="/computers"])`
When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/notebooks"])`
When I click on element located by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/notebooks"])`
Then the page with the URL 'https://demowebshop.tricentis.com/notebooks' is loaded

When I select `12` in dropdown located `By.xpath(//select[@id="products-pagesize"])`
Then the page with the URL 'https://demowebshop.tricentis.com/notebooks?pagesize=12' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"12")])` is = `1`

When I select `8` in dropdown located `By.xpath(//select[@id="products-pagesize"])`
Then the page with the URL 'https://demowebshop.tricentis.com/notebooks?pagesize=8' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"8")])` is = `1`

When I select `4` in dropdown located `By.xpath(//select[@id="products-pagesize"])`
Then the page with the URL 'https://demowebshop.tricentis.com/notebooks?pagesize=4' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"4")])` is = `1`


When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//a[@href="/computers"])`
When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/accessories"])`
When I click on element located by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/accessories"])`
Then the page with the URL 'https://demowebshop.tricentis.com/accessories' is loaded

When I select `12` in dropdown located `By.xpath(//select[@id="products-pagesize"])`
Then the page with the URL 'https://demowebshop.tricentis.com/accessories?pagesize=12' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"12")])` is = `1`

When I select `8` in dropdown located `By.xpath(//select[@id="products-pagesize"])`
Then the page with the URL 'https://demowebshop.tricentis.com/accessories?pagesize=8' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"8")])` is = `1`

When I select `4` in dropdown located `By.xpath(//select[@id="products-pagesize"])`
Then the page with the URL 'https://demowebshop.tricentis.com/accessories?pagesize=4' is loaded
Then number of elements found by `By.xpath(//option[@selected="selected" and contains(text(),"4")])` is = `1`


Scenario: 6. Verify that allows adding an item to the Wishlist

Given I am on page with URL `https://demowebshop.tricentis.com/`

When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//a[@href="/computers"])`
When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/accessories"])`
When I click on element located by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/accessories"])`
Then the page with the URL 'https://demowebshop.tricentis.com/accessories' is loaded

When I click on element located by `By.xpath(//img[contains(@alt,"TCP Instructor Led Training")])`
Then the page with the URL 'https://demowebshop.tricentis.com/copy-of-tcp-self-paced-training-2' is loaded
When I click on element located by `By.xpath(//input[@id="add-to-wishlist-button-66"])`
Then number of elements found by `By.xpath(//span[@class="wishlist-qty" and contains(text(),"(1)")])` is = `1`

When I click on element located by `By.xpath(//span[@itemprop="title" and contains(text(),"Accessories")])`
When I click on element located by `By.xpath(//img[contains(@alt,"TCP Coaching day")])`
Then the page with the URL 'https://demowebshop.tricentis.com/copy-of-copy-of-tcp-self-paced-training' is loaded
When I click on element located by `By.xpath(//input[@id="add-to-wishlist-button-63"])`
Then number of elements found by `By.xpath(//span[@class="wishlist-qty" and contains(text(),"(2)")])` is = `1`

When I click on element located by `By.xpath(//span[@itemprop="title" and contains(text(),"Accessories")])`
When I click on element located by `By.xpath(//img[contains(@alt,"TCP Coaching day")])`
Then the page with the URL 'https://demowebshop.tricentis.com/copy-of-copy-of-tcp-self-paced-training' is loaded
When I click on element located by `By.xpath(//input[@id="add-to-wishlist-button-63"])`
Then number of elements found by `By.xpath(//span[@class="wishlist-qty" and contains(text(),"(3)")])` is = `1`



Scenario: 7. Verify that allows adding an item to the card

Given I am on page with URL `https://demowebshop.tricentis.com/`

When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//a[@href="/computers"])`
When I hover mouse over element located by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/desktops"])`
When I click on element located by `By.xpath(//ul[@class="top-menu"]//ul[contains(@class,"sublist")]//a[@href="/desktops"])`
Then the page with the URL 'https://demowebshop.tricentis.com/desktops' is loaded

When I click on element located by `By.xpath(//div[@data-productid='72']//input[@type='button'])`
Then the page with the URL 'https://demowebshop.tricentis.com/build-your-cheap-own-computer' is loaded
When I click on element located by `By.xpath(//input[@id='add-to-cart-button-72'])`
Then number of elements found by `By.xpath(//span[@class="cart-qty" and contains(text(),"(1)")])` is = `1`

When I click on element located by `By.xpath(//span[@itemprop="title" and contains(text(),"Desktops")])`
When I click on element located by `By.xpath(//div[@data-productid='74']//input[@type='button'])`
Then the page with the URL 'https://demowebshop.tricentis.com/build-your-own-expensive-computer-2' is loaded
When I click on element located by `By.xpath(//input[@id='add-to-cart-button-74'])`
Then number of elements found by `By.xpath(//span[@class="cart-qty" and contains(text(),"(2)")])` is = `1`

When I click on element located by `By.xpath(//span[@itemprop="title" and contains(text(),"Desktops")])`
When I click on element located by `By.xpath(//div[@data-productid='75']//input[@type='button'])`
Then the page with the URL 'https://demowebshop.tricentis.com/simple-computer' is loaded
When I click on element located by `By.xpath(//input[@id='product_attribute_75_5_31_96'])`
When I click on element located by `By.xpath(//input[@id='add-to-cart-button-75'])`
Then number of elements found by `By.xpath(//span[@class="cart-qty" and contains(text(),"(3)")])` is = `1`



Scenario: 8. Verify that allows removing an item from the card

When I click on element located by `By.xpath(//span[contains(text(),'Shopping cart')])`
Then the page with the URL 'https://demowebshop.tricentis.com/cart' is loaded
Then number of elements found by `By.xpath(//span[@class="cart-qty" and contains(text(),"(3)")])` is = `1`

When I click on element located by `By.xpath(//tr[@class='cart-item-row'][2]//input[@name='removefromcart'])`
When I click on element located by `By.xpath(//input[contains(@class,'update-cart-button')])`
Then number of elements found by `By.xpath(//span[@class="cart-qty" and contains(text(),"(2)")])` is = `1`



Scenario: 9. Verify that allows checkout an item

When I click on element located by `By.xpath(//input[@id='termsofservice'])`
When I click on element located by `By.xpath(//button[@id='checkout'])`
Then the page with the URL 'https://demowebshop.tricentis.com/onepagecheckout' is loaded



Scenario: 10. Clean Wishlist and Shopping Cart before test leaving

When I click on element located by `By.xpath(//span[contains(text(),'Wishlist')])`
Then the page with the URL 'https://demowebshop.tricentis.com/wishlist' is loaded
Then number of elements found by `By.xpath(//span[@class="wishlist-qty" and contains(text(),"(3)")])` is = `1`
When I click on element located by `By.xpath(//tr[@class='cart-item-row'][1]//input[@name='removefromcart'])`
When I click on element located by `By.xpath(//tr[@class='cart-item-row'][2]//input[@name='removefromcart'])`
When I click on element located by `By.xpath(//input[contains(@class,'update-wishlist-button')])`
Then number of elements found by `By.xpath(//span[@class="wishlist-qty" and contains(text(),"(0)")])` is = `1`


When I click on element located by `By.xpath(//span[contains(text(),'Shopping cart')])`
Then the page with the URL 'https://demowebshop.tricentis.com/cart' is loaded
Then number of elements found by `By.xpath(//span[@class="cart-qty" and contains(text(),"(2)")])` is = `1`
When I click on element located by `By.xpath(//tr[@class='cart-item-row'][1]//input[@name='removefromcart'])`
When I click on element located by `By.xpath(//tr[@class='cart-item-row'][2]//input[@name='removefromcart'])`
When I click on element located by `By.xpath(//input[contains(@class,'update-cart-button')])`
Then number of elements found by `By.xpath(//span[@class="cart-qty" and contains(text(),"(0)")])` is = `1`
