FILE(REMOVE_RECURSE
  "CMakeFiles/my_target"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/my_target.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
