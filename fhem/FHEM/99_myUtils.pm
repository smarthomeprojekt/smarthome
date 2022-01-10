sub Kalenderstart ($)
{
    my ($Ereignis) = @_;
    my @Ereignisarray = split(/.*:\s/, $Ereignis);
    my $Ereignisteil1 = $Ereignisarray[1];
    my @uids = split(/;/, $Ereignisteil1);
    
    foreach my $uid (@uids) {
        my $Kalendertext = fhem("get MuelltonnenKalender summary $uid");
        if ($Kalendertext =~ /Biotonne/) {
            fhem("set Bio_Tonne ja");
        };
        if ($Kalendertext =~ /Restmüll 2-wöchentlich/) {
            fhem("set Restmuell_Tonne ja");
        };
        if ($Kalendertext =~ /Papiertonne/) {
            fhem("set Papier_Tonne ja");
        };
       
    };
}
sub Kalenderende ($) {
    my ($Ereignis) = @_;
    my @Ereignisarray = split(/.*:\s/, $Ereignis);
    my $Ereignisteil1 = $Ereignisarray[1];
    my @uids = split(/;/, $Ereignisteil1);
    
    foreach my $uid (@uids) {
        my $Kalendertext = fhem("get MuelltonnenKalender summary $uid");
        if ($Kalendertext =~ /Biotonne/) {
            fhem("set Bio_Tonne nein");
        };
        if ($Kalendertext =~ /Restmüll 2-wöchentlich/) {
            fhem("set Restmuell_Tonne nein");
        };
        if ($Kalendertext =~ /Papiertonne/) {
            fhem("set Papier_Tonne nein");
        };
       
    };
}
