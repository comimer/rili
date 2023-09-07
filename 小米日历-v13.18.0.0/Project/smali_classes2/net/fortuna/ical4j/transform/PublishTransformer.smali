.class public Lnet/fortuna/ical4j/transform/PublishTransformer;
.super Lnet/fortuna/ical4j/transform/AbstractMethodTransformer;
.source "PublishTransformer.java"


# instance fields
.field private final organizerUpdate:Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/model/property/Organizer;Lnet/fortuna/ical4j/util/UidGenerator;Z)V
    .locals 2

    .line 1
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, p2, v1, p3}, Lnet/fortuna/ical4j/transform/AbstractMethodTransformer;-><init>(Lnet/fortuna/ical4j/model/property/Method;Lnet/fortuna/ical4j/util/UidGenerator;ZZ)V

    .line 5
    .line 6
    .line 7
    new-instance p2, Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;

    .line 8
    .line 9
    invoke-direct {p2, p1}, Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;-><init>(Lnet/fortuna/ical4j/model/property/Organizer;)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lnet/fortuna/ical4j/transform/PublishTransformer;->organizerUpdate:Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;

    .line 13
    .line 14
    return-void
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
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
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/Calendar;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/transform/PublishTransformer;->transform(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 3

    .line 2
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/component/CalendarComponent;

    .line 3
    iget-object v2, p0, Lnet/fortuna/ical4j/transform/PublishTransformer;->organizerUpdate:Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;

    invoke-virtual {v2, v1}, Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;->transform(Lnet/fortuna/ical4j/model/Component;)Lnet/fortuna/ical4j/model/Component;

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/transform/AbstractMethodTransformer;->transform(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p1

    return-object p1
.end method
