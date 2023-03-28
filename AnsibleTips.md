All that is needed to use ansible is SSH enabled on the devices

The command "`ansible --version`" shows the current ansible version being used

We can check the current ansible configuration by:

`cat /etc/ansible/ansible.cfg`

Reminder: to add hosts to a Linux device, we can:

`nano /etc/hosts`

And the ansible directory:

`ls /etc/ansible`

To see the ansible list of hosts configured:

`ansible --list-hosts all`

On the host file (inventory file!) you can add groups as [GroupName] or devices as:

On nano we can set marks using ALT + SHIFT + A then highlight what you cant to copy and ALT + SHIFT + 6 to copy and release with CTRL + U
-------------------------------
```bash
[gns3-ios]
S1
S2
R1
R2
```
-------------------------------

