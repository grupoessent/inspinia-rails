module Inspinia::Rails::SpinnerHelper
  # http://webapplayers.com/inspinia_admin-v2.7/spinners.html

  def rotating_plane_spinner
    spinner = <<-HTML
      <div class="sk-spinner sk-spinner-rotating-plane"></div>
    HTML

    spinner.html_safe
  end

  def double_bounce_spinner
    spinner = <<-HTML
      <div class="sk-spinner sk-spinner-double-bounce">
        <div class="sk-double-bounce1"></div>
        <div class="sk-double-bounce2"></div>
      </div>
    HTML

    spinner.html_safe
  end

  def wave_spinner
    spinner = <<-HTML
      <div class="sk-spinner sk-spinner-wave">
        <div class="sk-rect1"></div>
        <div class="sk-rect2"></div>
        <div class="sk-rect3"></div>
        <div class="sk-rect4"></div>
        <div class="sk-rect5"></div>
      </div>
    HTML

    spinner.html_safe
  end

  def wandering_cubes_spinner
    spinner = <<-HTML
      <div class="sk-spinner sk-spinner-wandering-cubes">
        <div class="sk-cube1"></div>
        <div class="sk-cube2"></div>
      </div>
    HTML

    spinner.html_safe
  end

  def pulse_spinner
    spinner = <<-HTML
      <div class="sk-spinner sk-spinner-pulse"></div>
    HTML

    spinner.html_safe
  end

  def chasing_dots_spinner
    spinner = <<-HTML
      <div class="sk-spinner sk-spinner-chasing-dots">
        <div class="sk-dot1"></div>
        <div class="sk-dot2"></div>
      </div>
    HTML

    spinner.html_safe
  end

  def three_bounce_spinner
    spinner = <<-HTML
      <div class="sk-spinner sk-spinner-three-bounce">
        <div class="sk-bounce1"></div>
        <div class="sk-bounce2"></div>
        <div class="sk-bounce3"></div>
      </div>
    HTML

    spinner.html_safe
  end

  def circle_spinner
    spinner = <<-HTML
      <div class="sk-spinner sk-spinner-circle">
        <div class="sk-circle1 sk-circle"></div>
        <div class="sk-circle2 sk-circle"></div>
        <div class="sk-circle3 sk-circle"></div>
        <div class="sk-circle4 sk-circle"></div>
        <div class="sk-circle5 sk-circle"></div>
        <div class="sk-circle6 sk-circle"></div>
        <div class="sk-circle7 sk-circle"></div>
        <div class="sk-circle8 sk-circle"></div>
        <div class="sk-circle9 sk-circle"></div>
        <div class="sk-circle10 sk-circle"></div>
        <div class="sk-circle11 sk-circle"></div>
        <div class="sk-circle12 sk-circle"></div>
      </div>
    HTML

    spinner.html_safe
  end

  def cube_grid_spinner
    spinner = <<-HTML
      <div class="sk-spinner sk-spinner-cube-grid">
        <div class="sk-cube"></div>
        <div class="sk-cube"></div>
        <div class="sk-cube"></div>
        <div class="sk-cube"></div>
        <div class="sk-cube"></div>
        <div class="sk-cube"></div>
        <div class="sk-cube"></div>
        <div class="sk-cube"></div>
        <div class="sk-cube"></div>
      </div>
    HTML

    spinner.html_safe
  end

  def fading_circle_spinner
    spinner = <<-HTML
      <div class="sk-spinner sk-spinner-fading-circle">
        <div class="sk-circle1 sk-circle"></div>
        <div class="sk-circle2 sk-circle"></div>
        <div class="sk-circle3 sk-circle"></div>
        <div class="sk-circle4 sk-circle"></div>
        <div class="sk-circle5 sk-circle"></div>
        <div class="sk-circle6 sk-circle"></div>
        <div class="sk-circle7 sk-circle"></div>
        <div class="sk-circle8 sk-circle"></div>
        <div class="sk-circle9 sk-circle"></div>
        <div class="sk-circle10 sk-circle"></div>
        <div class="sk-circle11 sk-circle"></div>
        <div class="sk-circle12 sk-circle"></div>
      </div>
    HTML

    spinner.html_safe
  end
end
