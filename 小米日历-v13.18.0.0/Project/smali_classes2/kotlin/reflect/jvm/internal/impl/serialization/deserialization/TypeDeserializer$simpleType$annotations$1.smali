.class final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$simpleType$annotations$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TypeDeserializer.kt"

# interfaces
.implements Lw7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->l(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Z)Lkotlin/reflect/jvm/internal/impl/types/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/a<",
        "Ljava/util/List<",
        "+",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $proto:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

.field final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$simpleType$annotations$1;->this$0:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$simpleType$annotations$1;->$proto:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$simpleType$annotations$1;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$simpleType$annotations$1;->this$0:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->c(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->c()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;->d()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a;

    move-result-object v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$simpleType$annotations$1;->$proto:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$simpleType$annotations$1;->this$0:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->c(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->g()Lm8/c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->c(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lm8/c;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
