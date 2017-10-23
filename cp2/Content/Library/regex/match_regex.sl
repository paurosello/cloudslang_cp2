namespace: regex
flow:
  name: match_regex
  inputs:
    - regex
    - word
  workflow:
    - match_regex:
        do:
          io.cloudslang.base.strings.match_regex:
            - regex: '${regex}'
            - text: '${word}'
        navigate:
          - MATCH: SUCCESS
          - NO_MATCH: FAILURE
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      match_regex:
        x: 309
        y: 218
        navigate:
          9dab7be2-6f31-63a5-2f52-d2e56642393a:
            targetId: a5930ad8-594d-8ba0-f9f0-d87229e8a4a9
            port: MATCH
          55067f9e-ac4a-c358-7da9-c29ac5e0150e:
            targetId: 7b4b7348-f125-b012-acc9-2441cff97090
            port: NO_MATCH
    results:
      SUCCESS:
        a5930ad8-594d-8ba0-f9f0-d87229e8a4a9:
          x: 585
          y: 91
      FAILURE:
        7b4b7348-f125-b012-acc9-2441cff97090:
          x: 602
          y: 298
