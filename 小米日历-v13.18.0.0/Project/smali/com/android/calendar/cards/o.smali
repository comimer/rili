.class public final synthetic Lcom/android/calendar/cards/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/calendar/cards/CardHelper$b;


# instance fields
.field public final synthetic a:Lcom/android/calendar/cards/t;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/cards/t;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/cards/o;->a:Lcom/android/calendar/cards/t;

    iput-boolean p2, p0, Lcom/android/calendar/cards/o;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/miui/calendar/account/mi/MiAccountSchema;)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/cards/o;->a:Lcom/android/calendar/cards/t;

    iget-boolean v1, p0, Lcom/android/calendar/cards/o;->b:Z

    invoke-static {v0, v1, p1, p2}, Lcom/android/calendar/cards/t;->c(Lcom/android/calendar/cards/t;ZLjava/util/List;Lcom/miui/calendar/account/mi/MiAccountSchema;)V

    return-void
.end method
