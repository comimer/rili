.class public Lnet/fortuna/ical4j/model/ComponentBuilder;
.super Lnet/fortuna/ical4j/model/AbstractContentBuilder;
.source "ComponentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/fortuna/ical4j/model/Component;",
        ">",
        "Lnet/fortuna/ical4j/model/AbstractContentBuilder;"
    }
.end annotation


# instance fields
.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/fortuna/ical4j/model/ComponentFactory<",
            "*>;>;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private properties:Lnet/fortuna/ical4j/model/PropertyList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/fortuna/ical4j/model/PropertyList<",
            "Lnet/fortuna/ical4j/model/Property;",
            ">;"
        }
    .end annotation
.end field

.field private subComponents:Lnet/fortuna/ical4j/model/ComponentList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/fortuna/ical4j/model/ComponentList<",
            "Lnet/fortuna/ical4j/model/Component;",
            ">;"
        }
    .end annotation
.end field


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
    iput-object v0, p0, Lnet/fortuna/ical4j/model/ComponentBuilder;->factories:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lnet/fortuna/ical4j/model/PropertyList;

    .line 12
    .line 13
    invoke-direct {v0}, Lnet/fortuna/ical4j/model/PropertyList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lnet/fortuna/ical4j/model/ComponentBuilder;->properties:Lnet/fortuna/ical4j/model/PropertyList;

    .line 17
    .line 18
    new-instance v0, Lnet/fortuna/ical4j/model/ComponentList;

    .line 19
    .line 20
    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ComponentList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lnet/fortuna/ical4j/model/ComponentBuilder;->subComponents:Lnet/fortuna/ical4j/model/ComponentList;

    .line 24
    .line 25
    return-void
    .line 26
    .line 27
.end method


# virtual methods
.method public build()Lnet/fortuna/ical4j/model/Component;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/ComponentBuilder;->factories:Ljava/util/List;

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
    if-eqz v2, :cond_2

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lnet/fortuna/ical4j/model/ComponentFactory;

    .line 19
    .line 20
    iget-object v3, p0, Lnet/fortuna/ical4j/model/ComponentBuilder;->name:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {v2, v3}, Lnet/fortuna/ical4j/model/ComponentFactory;->supports(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lnet/fortuna/ical4j/model/ComponentBuilder;->subComponents:Lnet/fortuna/ical4j/model/ComponentList;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lnet/fortuna/ical4j/model/ComponentBuilder;->properties:Lnet/fortuna/ical4j/model/PropertyList;

    .line 37
    .line 38
    iget-object v3, p0, Lnet/fortuna/ical4j/model/ComponentBuilder;->subComponents:Lnet/fortuna/ical4j/model/ComponentList;

    .line 39
    .line 40
    invoke-interface {v2, v1, v3}, Lnet/fortuna/ical4j/model/ComponentFactory;->createComponent(Lnet/fortuna/ical4j/model/PropertyList;Lnet/fortuna/ical4j/model/ComponentList;)Lnet/fortuna/ical4j/model/Component;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v1, p0, Lnet/fortuna/ical4j/model/ComponentBuilder;->properties:Lnet/fortuna/ical4j/model/PropertyList;

    .line 46
    .line 47
    invoke-interface {v2, v1}, Lnet/fortuna/ical4j/model/ComponentFactory;->createComponent(Lnet/fortuna/ical4j/model/PropertyList;)Lnet/fortuna/ical4j/model/Component;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    if-nez v1, :cond_5

    .line 53
    .line 54
    iget-object v0, p0, Lnet/fortuna/ical4j/model/ComponentBuilder;->name:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/AbstractContentBuilder;->isExperimentalName(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    new-instance v1, Lnet/fortuna/ical4j/model/component/XComponent;

    .line 63
    .line 64
    iget-object v0, p0, Lnet/fortuna/ical4j/model/ComponentBuilder;->name:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v2, p0, Lnet/fortuna/ical4j/model/ComponentBuilder;->properties:Lnet/fortuna/ical4j/model/PropertyList;

    .line 67
    .line 68
    invoke-direct {v1, v0, v2}, Lnet/fortuna/ical4j/model/component/XComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/AbstractContentBuilder;->allowIllegalNames()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    new-instance v1, Lnet/fortuna/ical4j/model/component/XComponent;

    .line 79
    .line 80
    iget-object v0, p0, Lnet/fortuna/ical4j/model/ComponentBuilder;->name:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v2, p0, Lnet/fortuna/ical4j/model/ComponentBuilder;->properties:Lnet/fortuna/ical4j/model/PropertyList;

    .line 83
    .line 84
    invoke-direct {v1, v0, v2}, Lnet/fortuna/ical4j/model/component/XComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v2, "Unsupported component ["

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object v2, p0, Lnet/fortuna/ical4j/model/ComponentBuilder;->name:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v2, "]"

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v0

    .line 118
    :cond_5
    :goto_1
    return-object v1
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

.method public factories(Ljava/util/List;)Lnet/fortuna/ical4j/model/ComponentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/fortuna/ical4j/model/ComponentFactory<",
            "*>;>;)",
            "Lnet/fortuna/ical4j/model/ComponentBuilder<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/ComponentBuilder;->factories:Ljava/util/List;

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

.method public name(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/fortuna/ical4j/model/ComponentBuilder<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lnet/fortuna/ical4j/model/ComponentBuilder;->name:Ljava/lang/String;

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

.method public property(Lnet/fortuna/ical4j/model/Property;)Lnet/fortuna/ical4j/model/ComponentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/fortuna/ical4j/model/Property;",
            ")",
            "Lnet/fortuna/ical4j/model/ComponentBuilder<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/ComponentBuilder;->properties:Lnet/fortuna/ical4j/model/PropertyList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

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

.method public subComponent(Lnet/fortuna/ical4j/model/Component;)Lnet/fortuna/ical4j/model/ComponentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/fortuna/ical4j/model/Component;",
            ")",
            "Lnet/fortuna/ical4j/model/ComponentBuilder<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/ComponentBuilder;->subComponents:Lnet/fortuna/ical4j/model/ComponentList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

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
