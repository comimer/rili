.class public Lnet/fortuna/ical4j/model/PropertyBuilder;
.super Lnet/fortuna/ical4j/model/AbstractContentBuilder;
.source "PropertyBuilder.java"


# instance fields
.field private factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/fortuna/ical4j/model/PropertyFactory<",
            "*>;>;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private parameters:Lnet/fortuna/ical4j/model/ParameterList;

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
    iput-object v0, p0, Lnet/fortuna/ical4j/model/PropertyBuilder;->factories:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lnet/fortuna/ical4j/model/ParameterList;

    .line 12
    .line 13
    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ParameterList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lnet/fortuna/ical4j/model/PropertyBuilder;->parameters:Lnet/fortuna/ical4j/model/ParameterList;

    .line 17
    .line 18
    return-void
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
.method public build()Lnet/fortuna/ical4j/model/Property;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/PropertyBuilder;->factories:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lnet/fortuna/ical4j/model/PropertyFactory;

    .line 19
    .line 20
    iget-object v3, p0, Lnet/fortuna/ical4j/model/PropertyBuilder;->name:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {v2, v3}, Lnet/fortuna/ical4j/model/PropertyFactory;->supports(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lnet/fortuna/ical4j/model/PropertyBuilder;->parameters:Lnet/fortuna/ical4j/model/ParameterList;

    .line 29
    .line 30
    iget-object v3, p0, Lnet/fortuna/ical4j/model/PropertyBuilder;->value:Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {v2, v1, v3}, Lnet/fortuna/ical4j/model/PropertyFactory;->createProperty(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    instance-of v2, v1, Lnet/fortuna/ical4j/model/Escapable;

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    iget-object v2, p0, Lnet/fortuna/ical4j/model/PropertyBuilder;->value:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v2}, Lnet/fortuna/ical4j/util/Strings;->unescape(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/Property;->setValue(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    if-nez v1, :cond_4

    .line 51
    .line 52
    iget-object v0, p0, Lnet/fortuna/ical4j/model/PropertyBuilder;->name:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/AbstractContentBuilder;->isExperimentalName(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    new-instance v1, Lnet/fortuna/ical4j/model/property/XProperty;

    .line 61
    .line 62
    iget-object v0, p0, Lnet/fortuna/ical4j/model/PropertyBuilder;->name:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v2, p0, Lnet/fortuna/ical4j/model/PropertyBuilder;->parameters:Lnet/fortuna/ical4j/model/ParameterList;

    .line 65
    .line 66
    iget-object v3, p0, Lnet/fortuna/ical4j/model/PropertyBuilder;->value:Ljava/lang/String;

    .line 67
    .line 68
    invoke-direct {v1, v0, v2, v3}, Lnet/fortuna/ical4j/model/property/XProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/AbstractContentBuilder;->allowIllegalNames()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    new-instance v1, Lnet/fortuna/ical4j/model/property/XProperty;

    .line 79
    .line 80
    iget-object v0, p0, Lnet/fortuna/ical4j/model/PropertyBuilder;->name:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v2, p0, Lnet/fortuna/ical4j/model/PropertyBuilder;->parameters:Lnet/fortuna/ical4j/model/ParameterList;

    .line 83
    .line 84
    iget-object v3, p0, Lnet/fortuna/ical4j/model/PropertyBuilder;->value:Ljava/lang/String;

    .line 85
    .line 86
    invoke-direct {v1, v0, v2, v3}, Lnet/fortuna/ical4j/model/property/XProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v2, "Illegal property ["

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lnet/fortuna/ical4j/model/PropertyBuilder;->name:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v2, "]"

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v0

    .line 120
    :cond_4
    :goto_1
    return-object v1
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

.method public factories(Ljava/util/List;)Lnet/fortuna/ical4j/model/PropertyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/fortuna/ical4j/model/PropertyFactory<",
            "*>;>;)",
            "Lnet/fortuna/ical4j/model/PropertyBuilder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/PropertyBuilder;->factories:Ljava/util/List;

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

.method public name(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyBuilder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lnet/fortuna/ical4j/model/PropertyBuilder;->name:Ljava/lang/String;

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

.method public parameter(Lnet/fortuna/ical4j/model/Parameter;)Lnet/fortuna/ical4j/model/PropertyBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/PropertyBuilder;->parameters:Lnet/fortuna/ical4j/model/ParameterList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/ParameterList;->add(Lnet/fortuna/ical4j/model/Parameter;)Z

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

.method public value(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyBuilder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lnet/fortuna/ical4j/model/PropertyBuilder;->value:Ljava/lang/String;

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
