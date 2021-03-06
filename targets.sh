case "${TARGET}" in
    'el6')
        NAME=${NAME:-one-context}
        RELSUFFIX=${RELSUFFIX:-.el6}
        TYPE=${TYPE:-rpm}
        TAGS=${TAGS:-rpm sysv one}
        DEPENDS=${DEPENDS:-util-linux-ng bash curl bind-utils cloud-utils-growpart dracut-modules-growroot ruby rubygem-json sudo shadow-utils open-vm-tools qemu-guest-agent}
        PROVIDES=${PROVIDES:-}
        REPLACES=${REPLACES:-cloud-init}
        CONFLICTS=${CONFLICTS:-${REPLACES} one-context-ec2}
        POSTIN=${POSTINST:-pkg/postinstall}
        PREUN=${PREUN:-pkg/preuninstall}
        POSTUN=${POSTUN:-pkg/postuninstall}
        POSTUP=${POSTUP:-pkg/postupgrade}
        ;;


    'el6_ec2')
        NAME=${NAME:-one-context-ec2}
        RELSUFFIX=${RELSUFFIX:-.el6}
        TYPE=${TYPE:-rpm}
        TAGS=${TAGS:-rpm sysv ec2}
        DEPENDS=${DEPENDS:-util-linux-ng bash curl bind-utils cloud-utils-growpart dracut-modules-growroot ruby rubygem-json sudo shadow-utils}
        PROVIDES=${PROVIDES:-}
        REPLACES=${REPLACES:-cloud-init}
        CONFLICTS=${CONFLICTS:-${REPLACES} one-context}
        POSTIN=${POSTINST:-pkg/postinstall.ec2 pkg/postinstall}
        PREUN=${PREUN:-pkg/preuninstall.ec2 pkg/preuninstall}
        POSTUN=${POSTUN:-pkg/postuninstall}
        POSTUP=${POSTUP:-pkg/postupgrade}
        ;;

    'el7')
        NAME=${NAME:-one-context}
        RELSUFFIX=${RELSUFFIX:-.el7}
        TYPE=${TYPE:-rpm}
        TAGS=${TAGS:-rpm systemd one}
        DEPENDS=${DEPENDS:-util-linux bash curl bind-utils cloud-utils-growpart ruby rubygem-json sudo shadow-utils open-vm-tools qemu-guest-agent}
        PROVIDES=${PROVIDES:-}
        REPLACES=${REPLACES:-cloud-init}
        CONFLICTS=${CONFLICTS:-${REPLACES} one-context-ec2}
        POSTIN=${POSTINST:-pkg/postinstall}
        PREUN=${PREUN:-pkg/preuninstall}
        POSTUN=${POSTUN:-pkg/postuninstall}
        POSTUP=${POSTUP:-pkg/postupgrade}
        ;;

    'el7_ec2')
        NAME=${NAME:-one-context-ec2}
        RELSUFFIX=${RELSUFFIX:-.el7}
        TYPE=${TYPE:-rpm}
        TAGS=${TAGS:-rpm systemd ec2}
        DEPENDS=${DEPENDS:-util-linux bash curl bind-utils cloud-utils-growpart ruby rubygem-json sudo shadow-utils}
        PROVIDES=${PROVIDES:-}
        REPLACES=${REPLACES:-cloud-init}
        CONFLICTS=${CONFLICTS:-${REPLACES} one-context}
        POSTIN=${POSTINST:-pkg/postinstall.ec2 pkg/postinstall}
        PREUN=${PREUN:-pkg/preuninstall.ec2 pkg/preuninstall}
        POSTUN=${POSTUN:-pkg/postuninstall}
        POSTUP=${POSTUP:-pkg/postupgrade}
        ;;

    'suse')
        NAME=${NAME:-one-context}
        RELSUFFIX=${RELSUFFIX:-.suse}
        TYPE=${TYPE:-rpm}
        TAGS=${TAGS:-rpm systemd one}
        DEPENDS=${DEPENDS:-util-linux bash curl bind-utils growpart ruby sudo shadow open-vm-tools qemu-guest-agent} # rubygem-json}
        PROVIDES=${PROVIDES:-}
        REPLACES=${REPLACES:-cloud-init cloud-init-config-suse}
        CONFLICTS=${CONFLICTS:-${REPLACES} one-context-ec2}
        POSTIN=${POSTINST:-pkg/postinstall}
        PREUN=${PREUN:-pkg/preuninstall}
        POSTUN=${POSTUN:-pkg/postuninstall}
        POSTUP=${POSTUP:-pkg/postupgrade}
        ;;

    'suse_ec2')
        NAME=${NAME:-one-context-ec2}
        RELSUFFIX=${RELSUFFIX:-.suse}
        TYPE=${TYPE:-rpm}
        TAGS=${TAGS:-rpm systemd ec2}
        DEPENDS=${DEPENDS:-util-linux bash curl bind-utils growpart ruby sudo shadow} # rubygem-json}
        PROVIDES=${PROVIDES:-}
        REPLACES=${REPLACES:-cloud-init cloud-init-config-suse}
        CONFLICTS=${CONFLICTS:-${REPLACES} one-context}
        POSTIN=${POSTINST:-pkg/postinstall.ec2 pkg/postinstall}
        PREUN=${PREUN:-pkg/preuninstall.ec2 pkg/preuninstall}
        POSTUN=${POSTUN:-pkg/postuninstall}
        POSTUP=${POSTUP:-pkg/postupgrade}
        ;;


    'deb')
        NAME=${NAME:-one-context}
        RELSUFFIX=${RELSUFFIX:-}
        TYPE=${TYPE:-deb}
        TAGS=${TAGS:-deb sysv systemd upstart one}
        DEPENDS=${DEPENDS:-util-linux bash curl bind9-host cloud-utils ruby python ifupdown acpid sudo passwd open-vm-tools qemu-guest-agent}
        PROVIDES=${PROVIDES:-}
        REPLACES=${REPLACES:-cloud-init}
        CONFLICTS=${CONFLICTS:-${REPLACES} one-context-ec2}
        POSTIN=${POSTINST:-pkg/postinstall}
        PREUN=${PREUN:-pkg/preuninstall}
        POSTUN=${POSTUN:-pkg/postuninstall}
        POSTUP=${POSTUP:-pkg/postupgrade}
        ;;

    'deb_ec2')
        NAME=${NAME:-one-context-ec2}
        RELSUFFIX=${RELSUFFIX:-}
        TYPE=${TYPE:-deb}
        TAGS=${TAGS:-deb sysv systemd upstart ec2}
        DEPENDS=${DEPENDS:-util-linux bash curl bind9-host cloud-utils ruby python ifupdown sudo passwd resolvconf}
        PROVIDES=${PROVIDES:-}
        REPLACES=${REPLACES:-cloud-init}
        CONFLICTS=${CONFLICTS:-${REPLACES} one-context}
        POSTIN=${POSTINST:-pkg/postinstall.ec2 pkg/postinstall}
        PREUN=${PREUN:-pkg/preuninstall.ec2 pkg/preuninstall}
        POSTUN=${POSTUN:-pkg/postuninstall}
        POSTUP=${POSTUP:-pkg/postupgrade}
        ;;

    'alpine')
        NAME=${NAME:-one-context}
        RELSUFFIX=${RELSUFFIX:-}
        TYPE=${TYPE:-apk}
        TAGS=${TAGS:-apk one}
        DEPENDS=${DEPENDS:-util-linux bash curl rsync udev iptables sfdisk e2fsprogs-extra keepalived quagga sudo shadow open-vm-tools qemu-guest-agent}
        PROVIDES=${PROVIDES:-}
        REPLACES=${REPLACES:-}  #not respected
        CONFLICTS=${CONFLICTS:-one-context-ec2}
        POSTIN=${POSTINST:-pkg/postinstall}
        PREUN=${PREUN:-pkg/preuninstall}
        POSTUN=${POSTUN:-pkg/postuninstall}
        POSTUP=${POSTUP:-}  # FPM 1.9.3 bug: https://github.com/jordansissel/fpm/blob/v1.9.3/lib/fpm/package/apk.rb#L149
        ;;

    'alpine_ec2')
        NAME=${NAME:-one-context-ec2}
        RELSUFFIX=${RELSUFFIX:-}
        TYPE=${TYPE:-apk}
        TAGS=${TAGS:-apk ec2}
        DEPENDS=${DEPENDS:-util-linux bash curl rsync udev iptables sfdisk e2fsprogs-extra keepalived quagga sudo shadow}
        PROVIDES=${PROVIDES:-}
        REPLACES=${REPLACES:-}  #not respected
        CONFLICTS=${CONFLICTS:-one-context}
        POSTIN=${POSTINST:-pkg/postinstall.ec2 pkg/postinstall}
        PREUN=${PREUN:-pkg/preuninstall.ec2 pkg/preuninstall}
        POSTUN=${POSTUN:-pkg/postuninstall}
        POSTUP=${POSTUP:-}  # FPM 1.9.3 bug: https://github.com/jordansissel/fpm/blob/v1.9.3/lib/fpm/package/apk.rb#L149
        ;;

    'iso')
        NAME=${NAME:-one-context-linux}
        TYPE=${TYPE:-iso}
        ;;

    'arch')
        NAME=${NAME:-one-context}
        TYPE=${TYPE:-dir}
        TAGS=${TAGS:-arch one}
        echo 'ArchLinux target is currently not maintained'
        exit 1
        ;;

    *)
        echo "Invalid target ${TARGET}"
        exit 1
esac
