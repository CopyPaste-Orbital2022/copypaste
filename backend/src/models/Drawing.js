// Schema -> Drawing: id, user_id, drawing_name, created_date, strokes
// Create Model -> Drawing 

const mongoose = require('mongoose');
var ObjectId = require('mongodb').ObjectId;

// in case need to use int64
// require('mongoose-long')(mongoose);
// const {Types: {Long}} = mongoose;

const drawingSchema = mongoose.Schema({
    user_id: {
        type: ObjectId,
        required: true,
        //not unique because one user can have multiple drawings
    },
    drawing_name: {
        type: String,
        required: true,
    },
    created_date: {
        type: Date,
        default: Date.now,
    },
    strokes: [{
        points: [{
            dx: {
               type: mongoose.Schema.Types.Decimal128,
               
            },
            dy: {
                type: mongoose.Schema.Types.Decimal128,
                
            },
            pressue: {
                type: mongoose.Schema.Types.Decimal128,
                
            }
        }],
        border_points: [{
            dx: {
               type: mongoose.Schema.Types.Decimal128,
               
            },
            dy: {
                type: mongoose.Schema.Types.Decimal128,
                
            },
            pressue: {
                type: mongoose.Schema.Types.Decimal128,
                
            }
        }],
        color: {
            type: mongoose.Schema.Types.Decimal128,
            
        },
        thinning: {
            type: mongoose.Schema.Types.Decimal128,
            
        },
        smoothing: {
            type: mongoose.Schema.Types.Decimal128,
            
        },
        streamline: {
            type: mongoose.Schema.Types.Decimal128,
            
        },
        taper_start: {
            type: mongoose.Schema.Types.Decimal128,
            
        },
        taper_end: {
            type: mongoose.Schema.Types.Decimal128,
            
        },
        cap_start: {
            type: Boolean,
            
        },
        cap_end: {
            type: Boolean,
            
        },
        size: {
            type: mongoose.Schema.Types.Decimal128,
            
        },
        simulate_pressure: {
            type: Boolean,
            
        }
    }]
})

module.exports = mongoose.model("Drawing", drawingSchema);