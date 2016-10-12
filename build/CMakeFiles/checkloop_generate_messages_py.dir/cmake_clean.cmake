FILE(REMOVE_RECURSE
  "CMakeFiles/checkloop_generate_messages_py"
  "devel/lib/python2.7/dist-packages/checkloop/srv/_GetBoundedMap.py"
  "devel/lib/python2.7/dist-packages/checkloop/srv/_LoadMap.py"
  "devel/lib/python2.7/dist-packages/checkloop/srv/_MatchClouds.py"
  "devel/lib/python2.7/dist-packages/checkloop/srv/_CorrectPose.py"
  "devel/lib/python2.7/dist-packages/checkloop/srv/_SetMode.py"
  "devel/lib/python2.7/dist-packages/checkloop/srv/_GetMode.py"
  "devel/lib/python2.7/dist-packages/checkloop/srv/__init__.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/checkloop_generate_messages_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
