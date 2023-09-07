.class public final synthetic Lcom/android/calendar/cards/w;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/cards/CardHelper$b;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/miui/calendar/account/mi/MiAccountSchema;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/cards/CardHelper$b;Ljava/util/List;Lcom/miui/calendar/account/mi/MiAccountSchema;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/cards/w;->a:Lcom/android/calendar/cards/CardHelper$b;

    iput-object p2, p0, Lcom/android/calendar/cards/w;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/android/calendar/cards/w;->c:Lcom/miui/calendar/account/mi/MiAccountSchema;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/cards/w;->a:Lcom/android/calendar/cards/CardHelper$b;

    iget-object v1, p0, Lcom/android/calendar/cards/w;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/android/calendar/cards/w;->c:Lcom/miui/calendar/account/mi/MiAccountSchema;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/cards/CardHelper;->b(Lcom/android/calendar/cards/CardHelper$b;Ljava/util/List;Lcom/miui/calendar/account/mi/MiAccountSchema;)V

    return-void
.end method
