# vendor_nepo
Repo for adding my personal apps to my device(s)

Feel free to fork and use/edit/modify as you will =)


Just clone the project or add the following to your roomservice.xml:

`<project name="neporood/vendor_nepo" path="vendor/nepo" remote="github" revision="master" />`


Then, add the following call in your rom makefile (ie: lineage.mk)

$(call inherit-product, vendor/nepo/my-apps.mk)
