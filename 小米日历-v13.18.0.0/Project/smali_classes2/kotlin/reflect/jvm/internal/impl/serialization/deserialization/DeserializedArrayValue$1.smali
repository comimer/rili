.class final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializedArrayValue$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DeserializedArrayValue.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializedArrayValue;-><init>(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/b0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/l<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/c0;",
        "Lkotlin/reflect/jvm/internal/impl/types/b0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $type:Lkotlin/reflect/jvm/internal/impl/types/b0;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/b0;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializedArrayValue$1;->$type:Lkotlin/reflect/jvm/internal/impl/types/b0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/c0;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializedArrayValue$1;->invoke(Lkotlin/reflect/jvm/internal/impl/descriptors/c0;)Lkotlin/reflect/jvm/internal/impl/types/b0;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/reflect/jvm/internal/impl/descriptors/c0;)Lkotlin/reflect/jvm/internal/impl/types/b0;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializedArrayValue$1;->$type:Lkotlin/reflect/jvm/internal/impl/types/b0;

    return-object p1
.end method
