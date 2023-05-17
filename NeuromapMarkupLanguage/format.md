## Format Of Markup Format
This format is specifically designed for allowing the machine to code as much of the markdown format as possible.

~~~xml
<mindmap outcome='#{outcome_type}'>
  <title>Outcome Prediction</title>
  <date>#{date}</date>
  <time>#{time}</time>

  <neuromap>
    <row>+--------------------------------------------------+</row>
    <row>|.....................................Bad.Outcome..|</row>
    <row>|.Admin............................../.............|</row>
    <row>|.+......................Software.Bug..............|</row>
    <row>|..\..................../..........................|</row>
    <row>|...\................../...........................|</row>
    <row>|....\................/............................|</row>
    <row>|.....\............../.............................|</row>
    <row>|......+------------+..............................|</row>
    <row>|....................\.............................|</row>
    <row>|.....................\............................|</row>
    <row>|......................\...........................|</row>
    <row>|.......................\..........................|</row>
    <row>|........................User......................|</row>
    <row>+---------------------------------------------------</row>
  </neuromap>

  <user name='#{uname}'>
    <avatar>
      <uname>#{uname}</uname>
      <udescription>#{udescription}</udescription>
    </avatar>
  </user>

  <adversary name='#{aname}'>
    <avatar>
      <aname>#{aname}</aname>
      <adescription>#{adescription}</adescription>
    </avatar>
  </adversary>

  <snetwork bug='#{bname}'>
    <software>
      <bname>#{bname}</bname>
      <bdescription>#{bdescription}</bdescription>
    </software>
  </snetwork>
  
  <probability type="bayesian">
    <dataset><plabel>#{plabel}</plabel> | <pnumeric>#{pnumeric}</pnumeric></dataset>
  </probability>
</mindmap>
~~~
