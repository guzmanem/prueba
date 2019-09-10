class PagesController < ApplicationController
    def about
        @title = 'About Us'
        @content = 'El guevo peluo prueba'
    end
end
