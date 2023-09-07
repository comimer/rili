.class public final synthetic Lcom/android/calendar/homepage/w;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/AllInOneActivity;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/AllInOneActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/w;->a:Lcom/android/calendar/homepage/AllInOneActivity;

    iput p2, p0, Lcom/android/calendar/homepage/w;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/homepage/w;->a:Lcom/android/calendar/homepage/AllInOneActivity;

    iget v1, p0, Lcom/android/calendar/homepage/w;->b:I

    invoke-static {v0, v1}, Lcom/android/calendar/homepage/AllInOneActivity;->k0(Lcom/android/calendar/homepage/AllInOneActivity;I)V

    return-void
.end method
