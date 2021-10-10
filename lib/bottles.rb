class Bottles
  def verse num
    current = num
    after = current.zero? ? 99 : current - 1;

    first_line = if current.zero?
      "No more bottles of beer on the wall, no more bottles of beer."
    elsif current === 1
      "1 bottle of beer on the wall, 1 bottle of beer."
    else
      "#{current} bottles of beer on the wall, #{current} bottles of beer."
    end

    second_line = if after.zero?
      "Take it down and pass it around, no more bottles of beer on the wall."
    elsif after == 99
      "Go to the store and buy some more, #{after} bottles of beer on the wall."
    else
      "Take one down and pass it around, #{after} #{after === 1 ? "bottle" : "bottles"} of beer on the wall."
    end

    bottles_after = if after === 0
    "no more bottles"
    elsif after === 1
      "1 bottle"
    else
      "#{after} bottles"
    end
    <<-VERSE
#{first_line}
#{second_line}
VERSE
  end

  def verses(start, finish)
    num = start
    results = []

    while num >= finish
      results << verse(num)
      num -= 1
    end

    results.join("\n")
  end

  def song
    verses(99, 0)
  end
end

Bottles.new.verses(99, 98)