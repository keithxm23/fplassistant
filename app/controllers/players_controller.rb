class PlayersController < ApplicationController
  # GET /players
  # GET /players.json
  def index
    @players = Player.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @players }
    end
  end

  # GET /players/1
  # GET /players/1.json
  def show
    @player = Player.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @player }
    end
  end

  # GET /players/new
  # GET /players/new.json
  def new
    @player = Player.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @player }
    end
  end

  # GET /players/1/edit
  def edit
    @player = Player.find(params[:id])
  end

  # POST /players
  # POST /players.json
  def create
    @player = Player.new(params[:player])

    respond_to do |format|
      if @player.save
        format.html { redirect_to @player, notice: 'Player was successfully created.' }
        format.json { render json: @player, status: :created, location: @player }
      else
        format.html { render action: "new" }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /players/1
  # PUT /players/1.json
  def update
    @player = Player.find(params[:id])

    respond_to do |format|
      if @player.update_attributes(params[:player])
        format.html { redirect_to @player, notice: 'Player was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player = Player.find(params[:id])
    @player.destroy

    respond_to do |format|
      format.html { redirect_to players_url }
      format.json { head :no_content }
    end
  end
  
  def listjson
    @z = JSON.parse( IO.read('data.json') )
    p = @z[2].except('fixtures','event_explain','season_history','fixture_history')
    p['elementid'] = p['id']
    
    Player.create(p.except('id'))
    """
    k = Player.new
    k.elementid = p['id']
    k.first_name = p['first_name']
    k.second_name = p['second_name']
    k.transfers_out = p['transfers_out']
    k.code = p['code']
    k.event_total = p['event_total']
    k.last_season_points = p['last_season_points']
    k.squad_number = p['squad_number']
    k.transfer_balance = p['transfer_balance']
    k.news_updated = p['news_updated']
    k.news_added = p['news_added']
    k.event_cost = p['event_cost']
    k.web_name = p['web_name']
    k.in_dreamteam = p['in_dreamteam']
    k.team_code = p['team_code']
    k.shirt_image_url = p['shirt_image_url']
    k.transfers_out_event = p['transfers_out_event']
    k.element_type_id = p['element_type_id']
    k.max_cost = p['max_cost']
    k.selected = p['selected']
    k.min_cost = p['min_cost']
    k.total_points = p['total_points']
    k.type_name = p['type_name']
    k.team_name = p['team_name']
    k.status = p['status']
    k.added = p['added']
    k.form = p['form']
    k.shirt_mobile_image_url = p['shirt_mobile_image_url']
    k.current_fixture = p['current_fixture']
    k.now_cost = p['now_cost']
    k.points_per_game = p['points_per_game']
    k.transfers_in = p['transfers_in']
    k.news = p['news']        
    k.original_cost = p['original_cost']
    k.event_points = p['event_points']
    k.news_return = p['news_return']
    k.next_fixture = p['next_fixture']
    k.transfers_in_event = p['transfers_in_event']
    k.selected_by = p['selected_by']
    k.team_id = p['team_id']
    k.photo_mobile_url = p['photo_mobile_url']
  
    k.save
    
    Player.create(:elementid => p['id'], :first_name => p['first_name'], :last_name => p['last_name'], :transfers_out => p['transfers_out'], :code => p['code'], :event_total => p['event_total'], 
        :last_season_points => p['last_season_points'], :squad_number => p['squad_number'], :transfer_balance => p['transfer_balance'], 
        :news_updated => p['news_updated'], :news_added => p['news_added'], :event_cost => p['event_cost'], :web_name => p['web_name'], :in_dreamteam => p['in_dreamteam'], 
        :team_code => p['team_code'], :shirt_image_url => p['shirt_image_url'], :transfers_out_event => p['transfers_out_event'], :element_type_id => p['element_type_id'], 
        :max_cost => p['max_cost'], :selected => p['selected'], :min_cost => p['min_cost'], :total_points => p['total_points'], :type_name => p['type_name'], :team_name => p['team_name'], 
        :status => p['status'], :added => p['added'], :form => p['form'], :shirt_mobile_image_url => p['shirt_mobile_image_url'], 
        :current_fixture => p['current_fixture'], :now_cost => p['now_cost'], :points_per_game => p['points_per_game'], :transfers_in => p['transfers_in'], :news => p['news'], 
        :original_cost => p['original_cost'], :event_points => p['event_points'], :news_return => p['news_return'], :next_fixture => p['next_fixture'], 
        :transfers_in_event => p['transfers_in_event'], :selected_by => p['selected_by'], :team_id => p['team_id'], :photo_mobile_url => p['photo_mobile_url'])
    """
   """
    Player.create(:elementid => p['id'], :first_name => p['first_name'], :last_name => p['last_name'], :transfers_out => p['transfers_out'], :code => p['code'], :event_total => p['event_total'], 
        :last_season_points => p['last_season_points'], :squad_number => p['squad_number'], :transfer_balance => p['transfer_balance'], 
        :news_updated => p['news_updated'], :news_added => p['news_added'], :event_cost => p['event_cost'], :web_name => p['web_name'], :in_dreamteam => p['in_dreamteam'], 
        :team_code => p['team_code'], :shirt_image_url => p['shirt_image_url'], :transfers_out_event => p['transfers_out_event'], :element_type_id => p['element_type_id'], 
        :max_cost => p['max_cost'], :selected => p['selected'], :min_cost => p['min_cost'], :total_points => p['total_points'], :type_name => p['type_name'], :team_name => p['team_name'], 
        :status => p['status'], :added => p['added'], :form => p['form'], :shirt_mobile_image_url => p['shirt_mobile_image_url'], 
        :current_fixture => p['current_fixture'], :now_cost => p['now_cost'], :points_per_game => p['points_per_game'], :transfers_in => p['transfers_in'], :news => p['news'], 
        :original_cost => p['original_cost'], :event_points => p['event_points'], :news_return => p['news_return'], :next_fixture => p['next_fixture'], 
        :transfers_in_event => p['transfers_in_event'], :selected_by => p['selected_by'], :team_id => p['team_id'], :photo_mobile_url => p['photo_mobile_url'])
    
    @z.each do |p|
      Player.create(:elementid => p['id'], :first_name => p['first_name'], :last_name => p['last_name'], :transfers_out => p['transfers_out'], :code => p['code'], :event_total => p['event_total'], 
        :last_season_points => p['last_season_points'], :squad_number => p['squad_number'], :transfer_balance => p['transfer_balance'], 
        :news_updated => p['news_updated'], :news_added => p['news_added'], :event_cost => p['event_cost'], :web_name => p['web_name'], :in_dreamteam => p['in_dreamteam'], 
        :team_code => p['team_code'], :shirt_image_url => p['shirt_image_url'], :transfers_out_event => p['transfers_out_event'], :element_type_id => p['element_type_id'], 
        :max_cost => p['max_cost'], :selected => p['selected'], :min_cost => p['min_cost'], :total_points => p['total_points'], :type_name => p['type_name'], :team_name => p['team_name'], 
        :status => p['status'], :added => p['added'], :form => p['form'], :shirt_mobile_image_url => p['shirt_mobile_image_url'], 
        :current_fixture => p['current_fixture'], :now_cost => p['now_cost'], :points_per_game => p['points_per_game'], :transfers_in => p['transfers_in'], :news => p['news'], 
        :original_cost => p['original_cost'], :event_points => p['event_points'], :news_return => p['news_return'], :next_fixture => p['next_fixture'], 
        :transfers_in_event => p['transfers_in_event'], :selected_by => p['selected_by'], :team_id => p['team_id'], :photo_mobile_url => p['photo_mobile_url'])
    end
    """
    @players = []

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @players }
    end
  end
end
