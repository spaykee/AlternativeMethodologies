<template>
    <div class="testMbit">
         <b-container class="bv-example-row">
             <b-row class="mb-3" id="info">
                <b-col sm="10" offset="1">      
                    <b-card title="Self Perception Inventory" header-tag="" footer-tag="">
                        <b-card-text>        
                                                          
                        </b-card-text>
                    </b-card>
                </b-col>
            </b-row>

            <b-row class="mb-3">
                <b-col sm="10" offset="1">      
                      <b-card title="" header-tag="header" footer-tag="footer">
                        <h6 slot="header" class="mb-0"> Intrebare </h6>
                        <b-card-text>
                           <b-row >
                                <b-col sm="10">
                                    <label> intrebare </label>
                                </b-col>
                                <b-col sm="2">
                                     <label> intrebare </label>
                                </b-col>
                            </b-row>
                        </b-card-text>
                    </b-card>
                </b-col>
            </b-row>

             <b-row class="mb-3">
                <b-col sm="10" offset="1">      
                    <b-card title="" header-tag="" footer-tag="">
                        <b-card-text>        
                            <b-button @click="resetForm" variant="warning float-left"><font-awesome-icon icon="undo-alt"></font-awesome-icon> Reset Test</b-button>                  
                            <b-button @click="saveForm" :disabled="!formValid" variant="primary float-right"><font-awesome-icon icon="share-square"></font-awesome-icon> End Test</b-button>                                
                        </b-card-text>
                    </b-card>
                </b-col>
            </b-row>
        </b-container>        


        <b-modal ref="my-modal" hide-footer header-bg-variant="warning" title="Belbin test completed successfully!">
            <div class="d-block text-center">
                <h3>Chose the next test!</h3>
            </div>
            <b-button class="mt-3" variant="outline-danger" block to="/testMbti">MBTI</b-button>
            <b-button class="mt-2" variant="outline-primary" block to="/testEnneagram">Enneagram</b-button>
        </b-modal>
    </div>
</template>

<script>
export default {
    name: "testMbti",
    methods: {
        
    }
}
</script>

<style lang="scss" scoped>
#testBelbin {
    height: 85vh;
    overflow: auto;
    padding: 0 20px;
}

.list-group.list-group-horizontal  {
    .first-item-group {
        width: 90%;
    }

    .second-item-group {
        width: 13%;
    }
}

#info {
    .card-title {
        color: #0e577f;
        text-align: center;
    }
    p {
        text-indent: 40px;
        text-align: justify;
    }
}

</style>
