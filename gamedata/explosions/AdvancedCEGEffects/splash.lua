local definitions = {
    ["splash-emerge"] = {
        waterball = {
            air                = false,
            class              = [[CSimpleParticleSystem]],
            count              = 1,
            ground             = false,
            underwater         = 1,
            water              = true,
            properties = {
                airdrag            = 1,
                colormap           = [[0 0 0 0  0.8 0.8 1 .1     0.9 .9 0.95 .8  	0 0 0 0.01]],
                directional        = true,
                emitrot            = 30,
                emitrotspread      = [[0 r-360 r360]],
                emitvector         = [[0, 1, 0]],
                gravity            = [[0, -.15, 0]],
                numparticles       = 35,
                particlelife       = 2,
                particlelifespread = 10,
                particlesize       = 0.35,
                particlesizespread = 2,
                particlespeed      = [[0 r3 i-0.05]],
                particlespeedspread = 2,
                pos                = [[0 r-10 r10, 1 r5, 0 r-10 r10]],
                sizegrowth         = [[0.30 r1.6 r-1.6]],
                sizemod            = 1.0,
                texture            = [[dirt]],
                useairlos          = true,
            },
        },
        waterball2 = {
            air                = false,
            class              = [[CSimpleParticleSystem]],
            count              = 1,
            ground             = false,
            underwater         = 1,
            water              = true,
            properties = {
                airdrag            = 1,
                colormap           = [[0 0 0 0  0.8 0.8 1 .1     0.9 .9 0.95 .8  	0 0 0 0.01]],
                directional        = true,
                emitrot            = 90,
                emitrotspread      = 0,
                emitvector         = [[0, 1, 0]],
                gravity            = [[0, -.25, 0]],
                numparticles       = 30,
                particlelife       = 4,
                particlelifespread = 14,
                particlesize       = [[0.75 r2]],
                particlesizespread = 0,
                particlespeed      = [[1 r1]],
                particlespeedspread = 0,
                pos                = [[0 r-2 r2, 4, 0 r-2 r2]],
                sizegrowth         = [[0.040]],
                sizemod            = 1.0,
                texture            = [[dirt]],
                useairlos          = true,
            },
        },
        waterexplosion = {
            air                = false,
            class              = [[CSimpleParticleSystem]],
            count              = 1,
            ground             = false,
            underwater         = 1,
            water              = true,
            properties = {
                airdrag            = 1,
                colormap           = [[1 1 1 1   0.8 0.8 1 1 	0 0 0 0.01]],
                directional        = false,
                emitrot            = 0,
                emitrotspread      = [[20 r-20 r20]],
                emitvector         = [[0,1,0]],
                gravity            = [[0, -.25, 0]],
                numparticles       = 35,
                particlelife       = 20,
                particlelifespread = 6,
                particlesize       = 2,
                particlesizespread = 3,
                particlespeed      = [[3 i0.25]],
                particlespeedspread = 2,
                pos                = [[0, 0, 0]],
                sizegrowth         = -0.15,
                sizemod            = 1.0,
                texture            = [[dirt]],
                useairlos          = true,
            },
        },
        droplets = {
            class              = [[dirt]],
            count              = 10,
            water              = true,
            properties = {
                alphafalloff       = 1,
                color              = [[0.75, 0.75, 1]],
                pos                = [[0, 0, 0]],
                size               = [[4 r24]],
                speed              = [[-1 r2, 1 r1, -1 r2]],
            },
        },
    },


    ["splash-tiny"] = {
        waterball = {
            air                = false,
            class              = [[CSimpleParticleSystem]],
            count              = 1,
            ground             = false,
            underwater         = 1,
            water              = true,
            properties = {
                airdrag            = 1,
                colormap           = [[0 0 0 0  0.8 0.8 1 .1     0.9 .9 0.95 .8  	0 0 0 0.01]],
                directional        = true,
                emitrot            = 30,
                emitrotspread      = [[0 r-360 r360]],
                emitvector         = [[0, 1, 0]],
                gravity            = [[0, 0, 0]],
                numparticles       = 22,
                particlelife       = 2,
                particlelifespread = 10,
                particlesize       = 0.25,
                particlesizespread = 2,
                particlespeed      = [[0 r2 i-0.05]],
                particlespeedspread = 1.2,
                pos                = [[0 r-10 r10, 1 r5, 0 r-10 r10]],
                sizegrowth         = [[0.30 r1.6 r-1.6]],
                sizemod            = 1.0,
                texture            = [[dirt]],
                useairlos          = true,
            },
        },
        waterball2 = {
            air                = false,
            class              = [[CSimpleParticleSystem]],
            count              = 1,
            ground             = false,
            underwater         = 1,
            water              = true,
            properties = {
                airdrag            = 1,
                colormap           = [[0 0 0 0  0.8 0.8 1 .1     0.9 .9 0.95 .8  	0 0 0 0.01]],
                directional        = true,
                emitrot            = 90,
                emitrotspread      = 0,
                emitvector         = [[0, 1, 0]],
                gravity            = [[0, 0, 0]],
                numparticles       = 17,
                particlelife       = 4,
                particlelifespread = 14,
                particlesize       = [[0.5 r2]],
                particlesizespread = 0,
                particlespeed      = [[0.6 r0.6]],
                particlespeedspread = 0,
                pos                = [[0 r-2 r2, 4, 0 r-2 r2]],
                sizegrowth         = [[0.040]],
                sizemod            = 1.0,
                texture            = [[dirt]],
                useairlos          = true,
            },
        },
        waterexplosion = {
            air                = false,
            class              = [[CSimpleParticleSystem]],
            count              = 1,
            ground             = false,
            underwater         = 1,
            water              = true,
            properties = {
                airdrag            = 1,
                colormap           = [[1 1 1 1   0.8 0.8 1 1 	0 0 0 0.01]],
                directional        = false,
                emitrot            = 0,
                emitrotspread      = [[20 r-20 r20]],
                emitvector         = [[0,1,0]],
                gravity            = [[0, -.25, 0]],
                numparticles       = 20,
                particlelife       = 20,
                particlelifespread = 6,
                particlesize       = 1.2,
                particlesizespread = 1.8,
                particlespeed      = [[1.7 i0.2]],
                particlespeedspread = 2,
                pos                = [[0, 0, 0]],
                sizegrowth         = -0.15,
                sizemod            = 1.0,
                texture            = [[dirt]],
                useairlos          = true,
            },
        },
    },


    ["splash-small"] = {
        waterball = {
            air                = false,
            class              = [[CSimpleParticleSystem]],
            count              = 1,
            ground             = false,
            underwater         = 1,
            water              = true,
            properties = {
                airdrag            = 1,
                colormap           = [[0 0 0 0  0.8 0.8 1 .1     0.9 .9 0.95 .8  	0 0 0 0.01]],
                directional        = true,
                emitrot            = 30,
                emitrotspread      = [[0 r-360 r360]],
                emitvector         = [[0, 1, 0]],
                gravity            = [[0, 0, 0]],
                numparticles       = 35,
                particlelife       = 2,
                particlelifespread = 10,
                particlesize       = 0.35,
                particlesizespread = 2,
                particlespeed      = [[0 r3 i-0.05]],
                particlespeedspread = 2,
                pos                = [[0 r-10 r10, 1 r5, 0 r-10 r10]],
                sizegrowth         = [[0.30 r1.6 r-1.6]],
                sizemod            = 1.0,
                texture            = [[dirt]],
                useairlos          = true,
            },
        },
        waterball2 = {
            air                = false,
            class              = [[CSimpleParticleSystem]],
            count              = 1,
            ground             = false,
            underwater         = 1,
            water              = true,
            properties = {
                airdrag            = 1,
                colormap           = [[0 0 0 0  0.8 0.8 1 .1     0.9 .9 0.95 .8  	0 0 0 0.01]],
                directional        = true,
                emitrot            = 90,
                emitrotspread      = 0,
                emitvector         = [[0, 1, 0]],
                gravity            = [[0, 0, 0]],
                numparticles       = 30,
                particlelife       = 4,
                particlelifespread = 14,
                particlesize       = [[0.75 r2]],
                particlesizespread = 0,
                particlespeed      = [[1 r1]],
                particlespeedspread = 0,
                pos                = [[0 r-2 r2, 4, 0 r-2 r2]],
                sizegrowth         = [[0.040]],
                sizemod            = 1.0,
                texture            = [[dirt]],
                useairlos          = true,
            },
        },
        waterexplosion = {
            air                = false,
            class              = [[CSimpleParticleSystem]],
            count              = 1,
            ground             = false,
            underwater         = 1,
            water              = true,
            properties = {
                airdrag            = 1,
                colormap           = [[1 1 1 1   0.8 0.8 1 1 	0 0 0 0.01]],
                directional        = false,
                emitrot            = 0,
                emitrotspread      = [[20 r-20 r20]],
                emitvector         = [[0,1,0]],
                gravity            = [[0, -.25, 0]],
                numparticles       = 35,
                particlelife       = 20,
                particlelifespread = 6,
                particlesize       = 2,
                particlesizespread = 3,
                particlespeed      = [[3 i0.25]],
                particlespeedspread = 2,
                pos                = [[0, 0, 0]],
                sizegrowth         = -0.15,
                sizemod            = 1.0,
                texture            = [[dirt]],
                useairlos          = true,
            },
        },
    },



    ["splash-medium"] = {
        waterball = {
            air                = false,
            class              = [[CSimpleParticleSystem]],
            count              = 1,
            ground             = false,
            underwater         = 1,
            water              = true,
            properties = {
                airdrag            = 1,
                colormap           = [[0 0 0 0  0.8 0.8 1 .1     0.9 .9 0.95 .8  	0 0 0 0.01]],
                directional        = true,
                emitrot            = 30,
                emitrotspread      = [[0 r-360 r360]],
                emitvector         = [[0, 1, 0]],
                gravity            = [[0, 0, 0]],
                numparticles       = 20,
                particlelife       = 2,
                particlelifespread = 20,
                particlesize       = 0.5,
                particlesizespread = 2,
                particlespeed      = [[0 r3 i-0.05]],
                particlespeedspread = 2,
                pos                = [[0 r-10 r10, 3 r5, 0 r-10 r10]],
                sizegrowth         = [[0.17 r1.0 r-1.0]],
                sizemod            = 1.0,
                texture            = [[dirt]],
                useairlos          = true,
            },
        },
        waterball2 = {
            air                = false,
            class              = [[CSimpleParticleSystem]],
            count              = 1,
            ground             = false,
            underwater         = 1,
            water              = true,
            properties = {
                airdrag            = 1,
                colormap           = [[0 0 0 0  0.8 0.8 1 .1     0.9 .9 0.95 .8  	0 0 0 0.01]],
                directional        = true,
                emitrot            = 90,
                emitrotspread      = 0,
                emitvector         = [[0, 1, 0]],
                gravity            = [[0, 0, 0]],
                numparticles       = 50,
                particlelife       = 4,
                particlelifespread = 20,
                particlesize       = [[1 r2]],
                particlesizespread = 0,
                particlespeed      = [[1 r1]],
                particlespeedspread = 0,
                pos                = [[0 r-2 r2,4, 0 r-2 r2]],
                sizegrowth         = [[0.05]],
                sizemod            = 1.0,
                texture            = [[dirt]],
                useairlos          = true,
            },
        },
        waterexplosion = {
            air                = false,
            class              = [[CSimpleParticleSystem]],
            count              = 1,
            ground             = false,
            underwater         = 1,
            water              = true,
            properties = {
                airdrag            = 1,
                colormap           = [[1 1 1 1   0.8 0.8 1 1 	0 0 0 0.01]],
                directional        = false,
                emitrot            = 0,
                emitrotspread      = [[20 r-20 r20]],
                emitvector         = [[0,1,0]],
                gravity            = [[0, -.25, 0]],
                numparticles       = 30,
                particlelife       = 40,
                particlelifespread = 12,
                particlesize       = 5,
                particlesizespread = 5,
                particlespeed      = [[3 i0.25]],
                particlespeedspread = 2,
                pos                = [[0, 2, 0]],
                sizegrowth         = -0.35,
                sizemod            = 1.0,
                texture            = [[dirt]],
                useairlos          = true,
            },
        },
    },


    ["splash-large"] = {
        waterball = {
            air                = false,
            class              = [[CSimpleParticleSystem]],
            count              = 1,
            ground             = false,
            underwater         = 1,
            water              = true,
            properties = {
                airdrag            = 1,
                colormap           = [[0 0 0 0  0.8 0.8 1 .1     0.9 .9 0.95 .8  	0 0 0 0.01]],
                directional        = true,
                emitrot            = 30,
                emitrotspread      = [[0 r-360 r360]],
                emitvector         = [[0, 1, 0]],
                gravity            = [[0, 0, 0]],
                numparticles       = 45,
                particlelife       = 4,
                particlelifespread = 28,
                particlesize       = 0.70,
                particlesizespread = 4,
                particlespeed      = [[0 r3 i-0.05]],
                particlespeedspread = 2,
                pos                = [[0 r-10 r10, 2 r5, 0 r-10 r10]],
                sizegrowth         = [[-0.30 r1.6 r-1.6]],
                sizemod            = 1.0,
                texture            = [[dirt]],
                useairlos          = true,
            },
        },
        waterball2 = {
            air                = false,
            class              = [[CSimpleParticleSystem]],
            count              = 1,
            ground             = false,
            underwater         = 1,
            water              = true,
            properties = {
                airdrag            = 1,
                colormap           = [[0 0 0 0  0.8 0.8 1 .1     0.9 .9 0.95 .8  	0 0 0 0.01]],
                directional        = true,
                emitrot            = 90,
                emitrotspread      = 0,
                emitvector         = [[0, 1, 0]],
                gravity            = [[0, 0, 0]],
                numparticles       = 50,
                particlelife       = 4,
                particlelifespread = 24,
                particlesize       = [[2 r4]],
                particlesizespread = 0,
                particlespeed      = [[4 i0.25]],
                particlespeedspread = 0,
                pos                = [[0 r-10 r10,4, 0 r-10 r10]],
                sizegrowth         = [[0.10]],
                sizemod            = 1.0,
                texture            = [[dirt]],
                useairlos          = true,
            },
        },
        waterexplosion = {
            air                = false,
            class              = [[CSimpleParticleSystem]],
            count              = 1,
            ground             = false,
            underwater         = 1,
            water              = true,
            properties = {
                airdrag            = 1,
                colormap           = [[1 1 1 1   0.8 0.8 1 1 	0 0 0 0.01]],
                directional        = false,
                emitrot            = 0,
                emitrotspread      = [[20 r-20 r20]],
                emitvector         = [[0,1,0]],
                gravity            = [[0, -.25, 0]],
                numparticles       = 40,
                particlelife       = 20,
                particlelifespread = 18,
                particlesize       = 5,
                particlesizespread = 10,
                particlespeed      = [[3 i0.25]],
                particlespeedspread = 2,
                pos                = [[0, 18, 0]],
                sizegrowth         = -0.25,
                sizemod            = 1.0,
                texture            = [[dirt]],
                useairlos          = true,
            },
        },
    },



    ["splash-huge"] = {
        waterball = {
            air                = false,
            class              = [[CSimpleParticleSystem]],
            count              = 1,
            ground             = false,
            underwater         = 1,
            water              = true,
            properties = {
                airdrag            = 1,
                colormap           = [[0 0 0 0  0.8 0.8 1 .1     0.9 .9 0.95 .8  	0 0 0 0.01]],
                directional        = true,
                emitrot            = 30,
                emitrotspread      = [[0 r-360 r360]],
                emitvector         = [[0, 1, 0]],
                gravity            = [[0, 0, 0]],
                numparticles       = 60,
                particlelife       = 6,
                particlelifespread = 25,
                particlesize       = 2,
                particlesizespread = 4,
                particlespeed      = [[0 r2 i-0.05]],
                particlespeedspread = 2,
                pos                = [[0 r-10 r10, 5 r20, 0 r-10 r10]],
                sizegrowth         = [[-0.50 r0.6]],
                sizemod            = 1.0,
                texture            = [[dirt]],
                useairlos          = true,
            },
        },
        waterball2 = {
            air                = false,
            class              = [[CSimpleParticleSystem]],
            count              = 1,
            ground             = false,
            underwater         = 1,
            water              = true,
            properties = {
                airdrag            = 0.95,
                colormap           = [[0 0 0 0  0.8 0.8 1 .1     0.9 .9 0.95 .8  	0 0 0 0.01]],
                directional        = true,
                emitrot            = 90,
                emitrotspread      = 0,
                emitvector         = [[0, 1, 0]],
                gravity            = [[0, 0, 0]],
                numparticles       = 60,
                particlelife       = 4,
                particlelifespread = 30,
                particlesize       = [[2 r4]],
                particlesizespread = 0,
                particlespeed      = [[2.5 r1.5]],
                particlespeedspread = 0,
                pos                = [[0 r-10 r10, 4, 0 r-10 r10]],
                sizegrowth         = [[0.50 r-0.6]],
                sizemod            = 1.0,
                texture            = [[dirt]],
                useairlos          = true,
            },
        },
        waterexplosion = {
            air                = false,
            class              = [[CSimpleParticleSystem]],
            count              = 1,
            ground             = false,
            underwater         = 1,
            water              = true,
            properties = {
                airdrag            = 0.98,
                colormap           = [[1 1 1 1   0.8 0.8 1 1 	0 0 0 0.01]],
                directional        = false,
                emitrot            = 0,
                emitrotspread      = [[30 r-20 r20]],
                emitvector         = [[0,1,0]],
                gravity            = [[0, -.25, 0]],
                numparticles       = 40,
                particlelife       = 35,
                particlelifespread = 20,
                particlesize       = 4,
                particlesizespread = 12,
                particlespeed      = [[2 i0.25]],
                particlespeedspread = 6,
                pos                = [[0, 18, 0]],
                sizegrowth         = -0.15,
                sizemod            = 1.0,
                texture            = [[dirt]],
                useairlos          = true,
            },
        },
    },


}

return definitions