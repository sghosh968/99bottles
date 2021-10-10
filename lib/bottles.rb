class Bottles
  def verse(num)
    current = num
    after = num - 1

    bottles_before = if current === 0
      "no more bottles"
    elsif current === 1
      "1 bottle"
    else
      "#{current} bottles"
    end

    bottles_after = if after === 0
    "no more bottles"
    elsif after === 1
      "1 bottle"
    else
      "#{after} bottles"
    end
    <<-VERSE
#{bottles_before} of beer on the wall, #{bottles_before} of beer.
Take #{current === 1 ? "it" : "one" } down and pass it around, #{bottles_after} of beer on the wall.
VERSE
  end
end