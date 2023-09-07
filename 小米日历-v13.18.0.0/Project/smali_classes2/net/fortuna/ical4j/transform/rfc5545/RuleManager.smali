.class public Lnet/fortuna/ical4j/transform/rfc5545/RuleManager;
.super Ljava/lang/Object;
.source "RuleManager.java"


# static fields
.field private static final COMPONENT_RULES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545ComponentRule<",
            "+",
            "Lnet/fortuna/ical4j/model/Component;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final PROPERTY_RULES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545PropertyRule<",
            "+",
            "Lnet/fortuna/ical4j/model/Property;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/fortuna/ical4j/transform/rfc5545/RuleManager;->PROPERTY_RULES:Ljava/util/Set;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lnet/fortuna/ical4j/transform/rfc5545/RuleManager;->COMPONENT_RULES:Ljava/util/Set;

    .line 14
    .line 15
    const-class v0, Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545PropertyRule;

    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545PropertyRule;

    .line 36
    .line 37
    invoke-interface {v1}, Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545Rule;->getSupportedType()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    sget-object v2, Lnet/fortuna/ical4j/transform/rfc5545/RuleManager;->PROPERTY_RULES:Ljava/util/Set;

    .line 45
    .line 46
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-class v0, Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545ComponentRule;

    .line 51
    .line 52
    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545ComponentRule;

    .line 71
    .line 72
    invoke-interface {v1}, Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545Rule;->getSupportedType()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    sget-object v2, Lnet/fortuna/ical4j/transform/rfc5545/RuleManager;->COMPONENT_RULES:Ljava/util/Set;

    .line 80
    .line 81
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    return-void
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
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTo(Lnet/fortuna/ical4j/model/Component;)V
    .locals 2

    .line 3
    invoke-static {p0}, Lnet/fortuna/ical4j/transform/rfc5545/RuleManager;->getSupportedRulesFor(Lnet/fortuna/ical4j/model/Component;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545ComponentRule;

    .line 4
    invoke-interface {v1, p0}, Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545Rule;->applyTo(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static applyTo(Lnet/fortuna/ical4j/model/Property;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lnet/fortuna/ical4j/transform/rfc5545/RuleManager;->getSupportedRulesFor(Lnet/fortuna/ical4j/model/Property;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545PropertyRule;

    .line 2
    invoke-interface {v1, p0}, Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545Rule;->applyTo(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getSupportedRulesFor(Lnet/fortuna/ical4j/model/Component;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/fortuna/ical4j/model/Component;",
            ")",
            "Ljava/util/Set<",
            "Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545ComponentRule<",
            "Lnet/fortuna/ical4j/model/Component;",
            ">;>;"
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 8
    sget-object v1, Lnet/fortuna/ical4j/transform/rfc5545/RuleManager;->COMPONENT_RULES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545Rule;

    .line 9
    invoke-interface {v2}, Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545Rule;->getSupportedType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    check-cast v2, Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545ComponentRule;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getSupportedRulesFor(Lnet/fortuna/ical4j/model/Property;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/fortuna/ical4j/model/Property;",
            ")",
            "Ljava/util/Set<",
            "Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545PropertyRule<",
            "Lnet/fortuna/ical4j/model/Property;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 3
    sget-object v1, Lnet/fortuna/ical4j/transform/rfc5545/RuleManager;->PROPERTY_RULES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545Rule;

    .line 4
    invoke-interface {v2}, Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545Rule;->getSupportedType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    check-cast v2, Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545PropertyRule;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
