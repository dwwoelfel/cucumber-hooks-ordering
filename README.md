cucumber-hooks-ordering
=======================

Repo to demonstrate possible bug in cucumber hooks ordering.

If you run `bundle exec cucumber --format debug`, you'll see output that looks like:

```
bundle exec cucumber --format debug
before_features
  before_feature
    before_tags
    after_tags
    feature_name

Printing from inside the test step

    before_feature_element
      before_tags
      after_tags
      scenario_name
      before_steps
        before_step
          before_step_result
            step_name
          after_step_result
        after_step
      after_steps
    after_feature_element
  after_feature
after_features
```

Here's the output on CircleCI: 
