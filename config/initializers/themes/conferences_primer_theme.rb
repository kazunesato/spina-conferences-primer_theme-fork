# frozen_string_literal: true

::Spina::Theme.register do |theme| # rubocop:disable Metrics/BlockLength
  theme.name = 'conferences_primer_theme'
  theme.title = 'Conferences Primer theme'

  theme.layout_parts = %w[alert github_url]

  theme.parts = [{
    name: 'text',
    title: 'Text',
    part_type: 'Spina::Parts::Text'
  }, {
    name: 'gallery',
    title: 'Gallery',
    part_type: 'Spina::Parts::ImageCollection'
  }, {
    name: 'constitution',
    title: 'Constitution',
    part_type: 'Spina::Parts::Attachment'
  }, {
    name: 'slides',
    title: 'Slides',
    part_type: 'Spina::Parts::Attachment'
  }, {
    name: 'handout',
    title: 'Handout',
    part_type: 'Spina::Parts::Attachment'
  }, {
    name: 'poster',
    title: 'Poster',
    part_type: 'Spina::Parts::Attachment'
  }, {
    name: 'partner_societies',
    title: 'Partner societies',
    part_type: 'Spina::Parts::Repeater',
    parts: %w[name logo email_address website description]
  }, {
    name: 'minutes',
    title: 'Minutes',
    part_type: 'Spina::Parts::Repeater',
    parts: %w[date attachment]
  }, {
    name: 'documents',
    title: 'Documents',
    part_type: 'Spina::Parts::Repeater',
    parts: %w[name attachment]
  }, {
    name: 'contact',
    title: 'Contact',
    part_type: 'Spina::Parts::Text'
  }, {
    name: 'socials',
    title: 'Socials',
    part_type: 'Spina::Parts::Repeater',
    parts: %w[name location description]
  }, {
    name: 'meetings',
    title: 'Meetings',
    part_type: 'Spina::Parts::Repeater',
    parts: %w[name location description]
  }, {
    name: 'submission_url',
    title: 'Submission URL',
    part_type: 'Spina::Parts::Admin::Conferences::Url'
  }, {
    name: 'submission_date',
    title: 'Submission date',
    part_type: 'Spina::Parts::Admin::Conferences::Date'
  }, {
    name: 'submission_text',
    title: 'Submission text',
    part_type: 'Spina::Parts::Line'
  }, {
    name: 'committee_bios',
    title: 'Committee bios',
    part_type: 'Spina::Parts::Repeater',
    parts: %w[name institution role bio profile_picture]
  }, {
    name: 'sponsors',
    title: 'Sponsors',
    part_type: 'Spina::Parts::Repeater',
    parts: %w[name website logo]
  }, {
    name: 'advisory_board_members',
    title: 'Advisory Board Members',
    part_type: 'Spina::Parts::Repeater',
    parts: %w[name institution email_address website facebook_profile twitter_profile profile_picture]
  }, {
    name: 'events_list',
    title: 'Events',
    part_type: 'Spina::Parts::Repeater',
    parts: %w[name start_date finish_date start_time application_deadline location is_archived description url]
  }, {
    name: 'alert',
    title: 'Alert',
    part_type: 'Spina::Parts::Text'
  }, {
    name: 'github_url',
    title: 'GitHub URL',
    part_type: 'Spina::Parts::Line'
  }, {
    name: 'name',
    title: 'Name',
    part_type: 'Spina::Parts::Line'
  }, {
    name: 'logo',
    title: 'Logo',
    part_type: 'Spina::Parts::Image'
  }, {
    name: 'description',
    title: 'Description',
    part_type: 'Spina::Parts::Text'
  }, {
    name: 'website',
    title: 'Website',
    part_type: 'Spina::Parts::Admin::Conferences::Url'
  }, {
    name: 'email_address',
    title: 'Email address',
    part_type: 'Spina::Parts::Admin::Conferences::EmailAddress'
  }, {
    name: 'date',
    title: 'Date',
    part_type: 'Spina::Parts::Admin::Conferences::Date'
  }, {
    name: 'start_date',
    title: 'Start Date',
    part_type: 'Spina::Parts::Admin::Conferences::Date'
  }, {
    name: 'finish_date',
    title: 'Finish Date',
    part_type: 'Spina::Parts::Admin::Conferences::Date'
  }, {
    name: 'application_deadline',
    title: 'Application Deadline',
    part_type: 'Spina::Parts::Admin::Conferences::Date'
  }, {
    name: 'attachment',
    title: 'Attachment',
    part_type: 'Spina::Parts::Attachment'
  }, {
    name: 'start_time',
    title: 'Time',
    part_type: 'Spina::Parts::Admin::Conferences::Time'
  }, {
    name: 'location',
    title: 'Location',
    part_type: 'Spina::Parts::Line'
  }, {
    name: 'institution',
    title: 'Institution',
    part_type: 'Spina::Parts::Line'
  }, {
    name: 'role',
    title: 'Role',
    part_type: 'Spina::Parts::Line'
  }, {
    name: 'bio',
    title: 'Bio',
    part_type: 'Spina::Parts::Text'
  }, {
    name: 'profile_picture',
    title: 'Profile picture',
    part_type: 'Spina::Parts::Image'
  }, {
    name: 'facebook_profile',
    title: 'Facebook profile',
    part_type: 'Spina::Parts::Admin::Conferences::Url'
  }, {
    name: 'twitter_profile',
    title: 'Twitter profile',
    part_type: 'Spina::Parts::Admin::Conferences::Url'
  }, {
    name: 'url',
    title: 'Link',
    part_type: 'Spina::Parts::Admin::Conferences::Url'
  }, {
    name: 'embed_url',
    title: 'Form embed URL',
    part_type: 'Spina::Parts::Admin::Conferences::Url'
  }, {
    name: 'abstract',
    title: 'Abstract',
    part_type: 'Spina::Parts::Text'
  }, {
    name: 'cover_img',
    title: 'Cover image',
    part_type: 'Spina::Parts::Image'
  }, {
    name: 'journal_abbreviation',
    title: 'Journal Abbreviation',
    part_type: 'Spina::Parts::Line'
  }, {
    name: 'issn',
    title: 'ISSN',
    part_type: 'Spina::Parts::Line'
  }, {
    name: 'page_range',
    title: 'Page Range',
    part_type: 'Spina::Parts::Admin::Journal::PageRange'
  }, {
    name: 'is_archived',
    title: 'Archived?',
    part_type: 'Spina::Parts::Conferences::PrimerTheme::Checkbox'
  }, {
    name: 'current_section_title',
    title: 'Title for \'Current\' section',
    part_type: 'Spina::Parts::Line'
  }, {
    name: 'past_section_title',
    title: 'Title for \'Archive\' section',
    part_type: 'Spina::Parts::Line'
  }, {
    name: 'periodical_issues',
    title: 'Periodical Issues',
    part_type: 'Spina::Parts::Repeater',
    parts: %w[name date description cover_img attachment url]
  }, {
    name: 'title',
    title: 'Title',
    part_type: 'Spina::Parts::Line'
  }, {
    name: 'background_image',
    title: 'Background Image',
    part_type: 'Spina::Parts::Image'
  }, {
    name: 'carousel',
    title: 'Carousel',
    part_type: 'Spina::Parts::Repeater',
    parts: %w[title description url background_image]
  }]

  theme.view_templates = [{
    name: 'homepage',
    title: 'Homepage',
    parts: %w[carousel text]
  }, {
    name: 'information',
    title: 'Information',
    description: 'Contains general information',
    parts: %w[text]
  }, {
    name: 'journal_information',
    title: 'Information (Journal)',
    description: 'An information page specifically for the journal section',
    parts: %w[text]
  }, {
    name: 'magazine_information',
    title: 'Information (Magazine)',
    description: 'An information page specifically for the magazine section',
    parts: %w[text]
  }, {
    name: 'committee',
    title: 'Committee',
    description: 'Contains committee bios',
    parts: %w[text committee_bios]
  }, {
    name: 'advisory_board',
    title: 'Advisory Board',
    description: 'Contains details of Journal advisory board',
    parts: %w[text advisory_board_members]
  }, {
    name: 'about',
    title: 'About',
    description: 'Contains information about the society',
    parts: %w[text constitution minutes documents partner_societies contact]
  }, {
    name: 'events',
    title: 'Events',
    description: 'Contains details of past and upcoming events',
    parts: %w[text current_section_title past_section_title events_list]
  }, {
    name: 'periodical',
    title: 'Periodical',
    description: 'Can be used to store archives of things like newsletters and magazine issues',
    parts: %w[text periodical_issues]
  }, {
    name: 'embedded_form',
    title: 'Embedded form',
    description: 'Contains an embedded form',
    parts: %w[text embed_url]
  }, {
    name: 'show',
    title: 'Blank',
    description: 'Blank template',
    parts: []
  }]

  theme.custom_pages = [{
    name: 'homepage',
    title: 'Homepage',
    deletable: false,
    view_template: 'homepage'
  }, {
    name: 'about',
    title: 'About',
    deletable: false,
    view_template: 'about'
  }]

  theme.navigations = [{
    name: 'main',
    label: 'Main navigation',
    auto_add_pages: true
  }, {
    name: 'footer',
    label: 'Footer'
  }]

  theme.resources = [{
    name: 'journal',
    label: 'Journal',
    slug: 'journal',
    view_template: 'journal_information'
  }, {
    name: 'magazine',
    label: 'Magazine',
    slug: 'magazine',
    view_template: 'magazine_information'
  }]

  theme.plugins = %w[conferences journal conferences-blog]
end
