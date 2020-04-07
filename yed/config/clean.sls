# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import yed with context %}

include:
  - yed.jar

yed-config-clean-file-absent:
  file.absent:
    - name: {{ yed.dir.jar }}/yed.sh
    - require:
      - sls: yed.jar
