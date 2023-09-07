.class public final synthetic Lnet/fortuna/ical4j/model/z;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/z;->a:Ljava/lang/String;

    iput-object p2, p0, Lnet/fortuna/ical4j/model/z;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lnet/fortuna/ical4j/model/z;->a:Ljava/lang/String;

    iget-object v1, p0, Lnet/fortuna/ical4j/model/z;->b:Ljava/util/Map;

    check-cast p1, Lnet/fortuna/ical4j/model/Property;

    invoke-static {v0, v1, p1}, Lnet/fortuna/ical4j/model/IndexedPropertyList;->b(Ljava/lang/String;Ljava/util/Map;Lnet/fortuna/ical4j/model/Property;)V

    return-void
.end method
