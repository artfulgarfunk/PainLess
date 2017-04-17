# PainLess - The Pain Management Web App

[![Coverage Status](https://coveralls.io/repos/github/shezdev/final_project/badge.svg?branch=master)](https://coveralls.io/github/shezdev/final_project?branch=master)

# Synopsis

An app that tracks environmental factors and returns data correlated with levels of pain which the user inputs.

# Motivation

The purpose of this is to allow those who suffer with chronic conditions such as Arthritis and IBS to track their daily pain levels alongside environmental factors such as food and activities. This allows them to identify possible triggers for sudden flare ups - e.g. certain foods that may exacerbate their symptoms. In addition, users can access a log of all their inputs which can be exported to PDF, this can be shown to their GP to give a broad overview of their lifestyle and correlated pain. 

# Installation

- Clone this repo
- Run `bundle install` in the root directory
- Run `bin/rake db:create` to create the database
- Run `bin/rake db:migrate` to run the migrations
- Run `bin/rails s` to run the server
- Visit `http://localhost:3000` to view the app in your browser

# Running
`bin/rails s`
Rails defaults to the localhost:3000 URL

# Testing

Run `rspec` in your terminal in the project folder
