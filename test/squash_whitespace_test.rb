require 'test_helper'

class SquashWhitespaceTest < ActiveSupport::TestCase

  test 'remove whitespace between tags' do
    html = <<-EOS
      <div> 1 </div>
      <div> 2 </div>
      <div> 3 </div>
    EOS

    squashed = SquashWhitespace.squash_html(html)

    assert_equal '<div> 1 </div><div> 2 </div><div> 3 </div>', squashed
  end

  test 'strip whitespace in tag' do
    html = <<-EOS
      <div>
        \t 1 1
      </div>
      <div>
        \t 2 2
      </div>
      <div>
        \t 3 3
      </div>
    EOS

    squashed = SquashWhitespace.squash_html(html, strip: true)

    assert_equal '<div>1 1</div><div>2 2</div><div>3 3</div>', squashed
  end

end
