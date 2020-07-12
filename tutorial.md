## Laravel now supports pagination style for tailwind.      
```php
{{ $tweets->links('pagination::tailwind') }}

```


##   foreign relationship

```php 
Schema::table('likes', function (Blueprint $table) {
    $table->foreignId('user_id');

    $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');;
});
```                        
###  Both are same                  
```php 
Schema::table('liskes', function (Blueprint $table) {
    $table->foreignId('user_id')->constrained()->onDelete('cascade');;
})
```