require 'spec_helper'

describe "Pages" do
  let(:base_title) { "MyQtApp" }

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1',    text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }
  end

  describe "Home page" do
    before { visit root_path }

    let(:heading) { 'Welcome' }
    let(:page_title) { 'Home' }

    it_should_behave_like "all static pages"
  end

  describe "Help page" do
    before { visit help_path }

    let(:heading) { 'Help' }
    let(:page_title) { 'Help' }

    it_should_behave_like "all static pages"
  end
end
