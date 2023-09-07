.class public abstract Lnet/fortuna/ical4j/agent/AbstractUserAgent;
.super Ljava/lang/Object;
.source "AbstractUserAgent.java"

# interfaces
.implements Lnet/fortuna/ical4j/agent/UserAgent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/fortuna/ical4j/model/component/CalendarComponent;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/fortuna/ical4j/agent/UserAgent<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final prodId:Lnet/fortuna/ical4j/model/property/ProdId;

.field private final transformers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/fortuna/ical4j/model/property/Method;",
            "Lnet/fortuna/ical4j/transform/Transformer<",
            "Lnet/fortuna/ical4j/model/Calendar;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/model/property/ProdId;Lnet/fortuna/ical4j/model/property/Organizer;Lnet/fortuna/ical4j/util/UidGenerator;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/fortuna/ical4j/agent/AbstractUserAgent;->prodId:Lnet/fortuna/ical4j/model/property/ProdId;

    .line 5
    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lnet/fortuna/ical4j/agent/AbstractUserAgent;->transformers:Ljava/util/Map;

    .line 12
    .line 13
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    .line 14
    .line 15
    new-instance v1, Lnet/fortuna/ical4j/transform/PublishTransformer;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v1, p2, p3, v2}, Lnet/fortuna/ical4j/transform/PublishTransformer;-><init>(Lnet/fortuna/ical4j/model/property/Organizer;Lnet/fortuna/ical4j/util/UidGenerator;Z)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    .line 25
    .line 26
    new-instance v1, Lnet/fortuna/ical4j/transform/RequestTransformer;

    .line 27
    .line 28
    invoke-direct {v1, p2, p3}, Lnet/fortuna/ical4j/transform/RequestTransformer;-><init>(Lnet/fortuna/ical4j/model/property/Organizer;Lnet/fortuna/ical4j/util/UidGenerator;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->ADD:Lnet/fortuna/ical4j/model/property/Method;

    .line 35
    .line 36
    new-instance v1, Lnet/fortuna/ical4j/transform/AddTransformer;

    .line 37
    .line 38
    invoke-direct {v1, p2, p3}, Lnet/fortuna/ical4j/transform/AddTransformer;-><init>(Lnet/fortuna/ical4j/model/property/Organizer;Lnet/fortuna/ical4j/util/UidGenerator;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->CANCEL:Lnet/fortuna/ical4j/model/property/Method;

    .line 45
    .line 46
    new-instance v1, Lnet/fortuna/ical4j/transform/CancelTransformer;

    .line 47
    .line 48
    invoke-direct {v1, p2, p3}, Lnet/fortuna/ical4j/transform/CancelTransformer;-><init>(Lnet/fortuna/ical4j/model/property/Organizer;Lnet/fortuna/ical4j/util/UidGenerator;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    .line 55
    .line 56
    new-instance v1, Lnet/fortuna/ical4j/transform/ReplyTransformer;

    .line 57
    .line 58
    invoke-direct {v1, p3}, Lnet/fortuna/ical4j/transform/ReplyTransformer;-><init>(Lnet/fortuna/ical4j/util/UidGenerator;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REFRESH:Lnet/fortuna/ical4j/model/property/Method;

    .line 65
    .line 66
    new-instance v1, Lnet/fortuna/ical4j/transform/RefreshTransformer;

    .line 67
    .line 68
    invoke-direct {v1, p3}, Lnet/fortuna/ical4j/transform/RefreshTransformer;-><init>(Lnet/fortuna/ical4j/util/UidGenerator;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    .line 75
    .line 76
    new-instance v1, Lnet/fortuna/ical4j/transform/CounterTransformer;

    .line 77
    .line 78
    invoke-direct {v1, p3}, Lnet/fortuna/ical4j/transform/CounterTransformer;-><init>(Lnet/fortuna/ical4j/util/UidGenerator;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->DECLINE_COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    .line 85
    .line 86
    new-instance v1, Lnet/fortuna/ical4j/transform/DeclineCounterTransformer;

    .line 87
    .line 88
    invoke-direct {v1, p2, p3}, Lnet/fortuna/ical4j/transform/DeclineCounterTransformer;-><init>(Lnet/fortuna/ical4j/model/property/Organizer;Lnet/fortuna/ical4j/util/UidGenerator;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    return-void
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
.method public getProdId()Lnet/fortuna/ical4j/model/property/ProdId;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/agent/AbstractUserAgent;->prodId:Lnet/fortuna/ical4j/model/property/ProdId;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
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
.end method

.method protected transform(Lnet/fortuna/ical4j/model/property/Method;Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/agent/AbstractUserAgent;->transformers:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lnet/fortuna/ical4j/transform/Transformer;

    .line 8
    .line 9
    invoke-interface {p1, p2}, Lnet/fortuna/ical4j/transform/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-object p2
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
.end method

.method protected final varargs wrap(Lnet/fortuna/ical4j/model/property/Method;[Lnet/fortuna/ical4j/model/component/CalendarComponent;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/fortuna/ical4j/model/property/Method;",
            "[TT;)",
            "Lnet/fortuna/ical4j/model/Calendar;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-static {p2}, Lnet/fortuna/ical4j/util/Calendars;->wrap([Lnet/fortuna/ical4j/model/component/CalendarComponent;)Lnet/fortuna/ical4j/model/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lnet/fortuna/ical4j/agent/AbstractUserAgent;->prodId:Lnet/fortuna/ical4j/model/property/ProdId;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lnet/fortuna/ical4j/model/property/Version;->VERSION_2_0:Lnet/fortuna/ical4j/model/property/Version;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lnet/fortuna/ical4j/agent/AbstractUserAgent;->transform(Lnet/fortuna/ical4j/model/property/Method;Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
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
.end method
