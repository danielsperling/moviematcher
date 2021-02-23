User.destroy_all
Movie.destroy_all

scrape = Scraper.new
movies = scrape.scraper
Movie.create_movies(movies)



<div class="row"> 
<#% @movies.each do |display|  %>
        <div class="col-12" id="movie-card">
                <%= image_tag display.poster, class: 'movie-poster' %>

        <div class="overlay overlay--blur">
            <h3><%= display.title %></h3>
            <h4>⭐️ <%= display.year %></h4>
            <div>
            <h5><%= display.plot %></h5>
            </div>
        </div>
        </div>

    <#% end %>

<#% end %>
</div>