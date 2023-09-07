.class public Lnet/fortuna/ical4j/model/ParameterBuilder;
.super Lnet/fortuna/ical4j/model/AbstractContentBuilder;
.source "ParameterBuilder.java"


# instance fields
.field private factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/fortuna/ical4j/model/ParameterFactory<",
            "*>;>;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/AbstractContentBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lnet/fortuna/ical4j/model/ParameterBuilder;->factories:Ljava/util/List;

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
.end method


# virtual methods
.method public build()Lnet/fortuna/ical4j/model/Parameter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/ParameterBuilder;->factories:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lnet/fortuna/ical4j/model/ParameterFactory;

    .line 18
    .line 19
    iget-object v2, p0, Lnet/fortuna/ical4j/model/ParameterBuilder;->name:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactory;->supports(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lnet/fortuna/ical4j/model/ParameterBuilder;->value:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {v1, v0}, Lnet/fortuna/ical4j/model/ParameterFactory;->createParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_0
    if-nez v0, :cond_4

    .line 36
    .line 37
    iget-object v0, p0, Lnet/fortuna/ical4j/model/ParameterBuilder;->name:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/AbstractContentBuilder;->isExperimentalName(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/XParameter;

    .line 46
    .line 47
    iget-object v1, p0, Lnet/fortuna/ical4j/model/ParameterBuilder;->name:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v2, p0, Lnet/fortuna/ical4j/model/ParameterBuilder;->value:Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/parameter/XParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/AbstractContentBuilder;->allowIllegalNames()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/XParameter;

    .line 62
    .line 63
    iget-object v1, p0, Lnet/fortuna/ical4j/model/ParameterBuilder;->name:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v2, p0, Lnet/fortuna/ical4j/model/ParameterBuilder;->value:Ljava/lang/String;

    .line 66
    .line 67
    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/parameter/XParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    new-array v1, v1, [Ljava/lang/Object;

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    iget-object v3, p0, Lnet/fortuna/ical4j/model/ParameterBuilder;->name:Ljava/lang/String;

    .line 78
    .line 79
    aput-object v3, v1, v2

    .line 80
    .line 81
    const-string v2, "Unsupported parameter name: %s"

    .line 82
    .line 83
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :cond_4
    :goto_1
    return-object v0
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
.end method

.method public factories(Ljava/util/List;)Lnet/fortuna/ical4j/model/ParameterBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/fortuna/ical4j/model/ParameterFactory<",
            "*>;>;)",
            "Lnet/fortuna/ical4j/model/ParameterBuilder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/ParameterBuilder;->factories:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public name(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ParameterBuilder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lnet/fortuna/ical4j/model/ParameterBuilder;->name:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0
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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public value(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ParameterBuilder;
    .locals 0

    .line 1
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Strings;->escapeNewline(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lnet/fortuna/ical4j/model/ParameterBuilder;->value:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0
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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method
