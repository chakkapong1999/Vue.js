<template>
    <div>
        <h1> {{message}} </h1>
        <p> {{data}} </p>
    </div>
</template>

<script>
    export default{
        name:"Box",
        props: {
            message: String,
            data: String
        }
    }
</script>