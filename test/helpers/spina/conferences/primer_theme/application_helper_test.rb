# frozen_string_literal: true

require 'test_helper'

module Spina
  module Conferences
    module PrimerTheme
      class ApplicationHelperTest < ActionView::TestCase
        test 'returns current conference' do
          first_conference = Spina::Admin::Conferences::Conference.order(dates: :asc).first
          travel_to 1.month.before(first_conference.start_date) do
            assert_equal first_conference, current_conference
          end
          travel_to first_conference.finish_date do
            assert_equal first_conference, current_conference
          end
          travel_to(first_conference.finish_date + 1.day) do
            assert_equal first_conference, current_conference
          end
          travel_to(first_conference.finish_date + 2.days) do
            assert_not_equal first_conference, current_conference
          end
        end

        test 'renders ancestors' do
          Current.page = nil
          assert_empty ancestors
          Current.page = spina_pages(:about)
          assert_equal <<~HTML.strip, ancestors
            <nav aria-label="Breadcrumb" data-view-component="true" class="mb-4">
              <ol>
                  <li data-view-component="true" class="breadcrumb-item  breadcrumb-item-selected"><a aria-current="page" href="/about" data-view-component="true">About</a></li>
              </ol>
            </nav>
          HTML
          Current.page = spina_pages(:page_with_ancestor)
          assert_equal <<~HTML.strip, ancestors
            <nav aria-label="Breadcrumb" data-view-component="true" class="mb-4">
              <ol>
                  <li data-view-component="true" class="breadcrumb-item "><a href="/blank" data-view-component="true">Blank</a></li>
                  <li data-view-component="true" class="breadcrumb-item  breadcrumb-item-selected"><a aria-current="page" href="/page-with-ancestor" data-view-component="true">Page with ancestor</a></li>
              </ol>
            </nav>
          HTML
        end
      end
    end
  end
end
