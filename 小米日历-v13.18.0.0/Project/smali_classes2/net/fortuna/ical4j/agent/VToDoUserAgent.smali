.class public Lnet/fortuna/ical4j/agent/VToDoUserAgent;
.super Lnet/fortuna/ical4j/agent/AbstractUserAgent;
.source "VToDoUserAgent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/fortuna/ical4j/agent/AbstractUserAgent<",
        "Lnet/fortuna/ical4j/model/component/VToDo;",
        ">;"
    }
.end annotation


# instance fields
.field private final delegateTransformer:Lnet/fortuna/ical4j/transform/RequestTransformer;


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/model/property/ProdId;Lnet/fortuna/ical4j/model/property/Organizer;Lnet/fortuna/ical4j/util/UidGenerator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lnet/fortuna/ical4j/agent/AbstractUserAgent;-><init>(Lnet/fortuna/ical4j/model/property/ProdId;Lnet/fortuna/ical4j/model/property/Organizer;Lnet/fortuna/ical4j/util/UidGenerator;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lnet/fortuna/ical4j/transform/RequestTransformer;

    .line 5
    .line 6
    invoke-direct {p1, p3}, Lnet/fortuna/ical4j/transform/RequestTransformer;-><init>(Lnet/fortuna/ical4j/util/UidGenerator;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lnet/fortuna/ical4j/agent/VToDoUserAgent;->delegateTransformer:Lnet/fortuna/ical4j/transform/RequestTransformer;

    .line 10
    .line 11
    return-void
    .line 12
    .line 13
    .line 14
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
.method public bridge synthetic add(Lnet/fortuna/ical4j/model/component/CalendarComponent;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/agent/VToDoUserAgent;->add(Lnet/fortuna/ical4j/model/component/VToDo;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public add(Lnet/fortuna/ical4j/model/component/VToDo;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 3

    .line 2
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->ADD:Lnet/fortuna/ical4j/model/property/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/fortuna/ical4j/model/component/VToDo;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/agent/AbstractUserAgent;->wrap(Lnet/fortuna/ical4j/model/property/Method;[Lnet/fortuna/ical4j/model/component/CalendarComponent;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->validate()V

    return-object p1
.end method

.method public bridge synthetic cancel([Lnet/fortuna/ical4j/model/component/CalendarComponent;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 0

    .line 1
    check-cast p1, [Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/agent/VToDoUserAgent;->cancel([Lnet/fortuna/ical4j/model/component/VToDo;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public varargs cancel([Lnet/fortuna/ical4j/model/component/VToDo;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 1

    .line 2
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->CANCEL:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {p0, v0, p1}, Lnet/fortuna/ical4j/agent/AbstractUserAgent;->wrap(Lnet/fortuna/ical4j/model/property/Method;[Lnet/fortuna/ical4j/model/component/CalendarComponent;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->validate()V

    return-object p1
.end method

.method public counter(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 1

    .line 1
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lnet/fortuna/ical4j/agent/AbstractUserAgent;->transform(Lnet/fortuna/ical4j/model/property/Method;Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->validate()V

    .line 8
    .line 9
    .line 10
    return-object p1
    .line 11
    .line 12
    .line 13
    .line 14
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
.end method

.method public declineCounter(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 1

    .line 1
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->DECLINE_COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lnet/fortuna/ical4j/agent/AbstractUserAgent;->transform(Lnet/fortuna/ical4j/model/property/Method;Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->validate()V

    .line 8
    .line 9
    .line 10
    return-object p1
    .line 11
    .line 12
    .line 13
    .line 14
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
.end method

.method public delegate(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/agent/VToDoUserAgent;->delegateTransformer:Lnet/fortuna/ical4j/transform/RequestTransformer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/transform/RequestTransformer;->transform(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->validate()V

    .line 8
    .line 9
    .line 10
    return-object p1
    .line 11
    .line 12
    .line 13
    .line 14
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
.end method

.method public bridge synthetic publish([Lnet/fortuna/ical4j/model/component/CalendarComponent;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 0

    .line 1
    check-cast p1, [Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/agent/VToDoUserAgent;->publish([Lnet/fortuna/ical4j/model/component/VToDo;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public varargs publish([Lnet/fortuna/ical4j/model/component/VToDo;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 1

    .line 2
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {p0, v0, p1}, Lnet/fortuna/ical4j/agent/AbstractUserAgent;->wrap(Lnet/fortuna/ical4j/model/property/Method;[Lnet/fortuna/ical4j/model/component/CalendarComponent;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->validate()V

    return-object p1
.end method

.method public bridge synthetic refresh(Lnet/fortuna/ical4j/model/component/CalendarComponent;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/agent/VToDoUserAgent;->refresh(Lnet/fortuna/ical4j/model/component/VToDo;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public refresh(Lnet/fortuna/ical4j/model/component/VToDo;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 3

    .line 2
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REFRESH:Lnet/fortuna/ical4j/model/property/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/fortuna/ical4j/model/component/VToDo;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/agent/AbstractUserAgent;->wrap(Lnet/fortuna/ical4j/model/property/Method;[Lnet/fortuna/ical4j/model/component/CalendarComponent;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->validate()V

    return-object p1
.end method

.method public reply(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 1

    .line 1
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lnet/fortuna/ical4j/agent/AbstractUserAgent;->transform(Lnet/fortuna/ical4j/model/property/Method;Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->validate()V

    .line 8
    .line 9
    .line 10
    return-object p1
    .line 11
    .line 12
    .line 13
    .line 14
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
.end method

.method public bridge synthetic request([Lnet/fortuna/ical4j/model/component/CalendarComponent;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 0

    .line 1
    check-cast p1, [Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/agent/VToDoUserAgent;->request([Lnet/fortuna/ical4j/model/component/VToDo;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public varargs request([Lnet/fortuna/ical4j/model/component/VToDo;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 1

    .line 2
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {p0, v0, p1}, Lnet/fortuna/ical4j/agent/AbstractUserAgent;->wrap(Lnet/fortuna/ical4j/model/property/Method;[Lnet/fortuna/ical4j/model/component/CalendarComponent;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->validate()V

    return-object p1
.end method
