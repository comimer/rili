.class public Ls1/h;
.super Ljava/lang/Object;
.source "ThirdPartyEventLoader.java"


# direct methods
.method public static a(Landroid/content/Context;J)Lcom/android/calendar/common/event/schema/ThirdPartyEvent;
    .locals 5

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-static {p0}, Lt1/c;->b(Landroid/content/Context;)Lt1/c;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lt1/c;->m(Landroid/net/Uri;)Lt1/c;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v2, "sync_data1"

    .line 18
    .line 19
    const-string v3, "sync_data3"

    .line 20
    .line 21
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p0, v2}, Lt1/c;->j([Ljava/lang/String;)Lt1/c;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/4 v2, 0x2

    .line 30
    new-array v2, v2, [Ljava/lang/Class;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    aput-object v0, v2, v3

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    aput-object v0, v2, v4

    .line 37
    .line 38
    invoke-virtual {p0, v2}, Lt1/c;->l([Ljava/lang/Class;)Lt1/c;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string v0, "_id=?"

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lt1/c;->k(Ljava/lang/String;)Lt1/c;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    new-array v0, v4, [Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    aput-object p1, v0, v3

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lt1/c;->i([Ljava/lang/String;)Lt1/c;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Lt1/c;->f()Lt1/c$a;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_1

    .line 65
    .line 66
    invoke-virtual {p0}, Lt1/c$a;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_1

    .line 71
    .line 72
    new-instance p1, Lcom/android/calendar/common/event/schema/ThirdPartyEvent;

    .line 73
    .line 74
    invoke-direct {p1}, Lcom/android/calendar/common/event/schema/ThirdPartyEvent;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lt1/c$a;->k()Lt1/c$b;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p2, v3}, Lt1/c$b;->b(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {p1, p2}, Lcom/android/calendar/common/event/schema/ThirdPartyEvent;->setUrl(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lt1/c$a;->k()Lt1/c$b;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0, v4}, Lt1/c$b;->b(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p1, p0}, Lcom/android/calendar/common/event/schema/ThirdPartyEvent;->setPackageName(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-object p1

    .line 100
    :cond_1
    return-object v1
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method
